module Rapnd
  class Feedback
    attr_accessor :host, :cert, :logger, :airbrake
    
    def initialize(options = {})
      options[:host]        ||= 'feedback.sandbox.push.apple.com'
      options[:password]    ||= ''
      raise 'No cert provided!' unless options[:cert]
      
      Airbrake.configure { |config| config.api_key = options[:airbrake]; @airbrake = true; } if options[:airbrake]
      
      options[:host] = set_host(options[:host])
      
      @cert = options[:cert]
      @host = options[:host]
      # @logger = Logger.new("#{options[:dir]}/log/feedback.log")
    end
    
    def expired_tokens
      # @logger.info 'Connecting...'
      context      = OpenSSL::SSL::SSLContext.new
      context.cert = OpenSSL::X509::Certificate.new(File.read(@cert))
      context.key  = OpenSSL::PKey::RSA.new(File.read(@cert), @password)
      
      sock     = TCPSocket.new(@host, 2196)
      ssl      = OpenSSL::SSL::SSLSocket.new(sock, context)
      ssl.sync = true
      ssl.connect
      # @logger.info 'Connected!'
      
      devices = []
      
      while data = ssl.read(38)
        feedback = data.unpack('N1n1H64')            
        token = feedback[2].scan(/.{0,8}/).join(' ').strip
        devices << token
      end
      
      ssl.close
      sock.close
      
      devices.compact
    end
    
    private
    
    # This method provides a simple way set host to Apple's predefined
    # hosts based on setting the `:host` option as a simple. The two options are
    # `:sandbox` and `:production`.
    def set_host(host)
      case host
        when :sandbox    then 'feedback.sandbox.push.apple.com'
        when :production then 'feedback.push.apple.com'
        else host
      end
    end
  end
end