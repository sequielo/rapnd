require 'rapnd/daemon'
require 'rapnd/notification'
require 'rapnd/config'
require 'redis'

module Rapnd
  extend self
  
  def queue(queue_name, message)
    self.redis.lpush(queue_name, Marshal.dump(message))
  end
  
  def redis
    @redis ||= Redis.new(:host => Rapnd.config.redis_host, :port => Rapnd.config.redis_port, :password => Rapnd.config.redis_password)
  end
  
  def configure
    block_given? ? yield(Config) : Config
  end
  alias :config :configure
  
  
  # Send an alert to the device.
  # Uses default queue_name.
  # other_properties: badge, sound, custom_properties
  #
  def send_alert(device_token, alert, other_properties=nil)
    message = {
      :device_token => device_token.strip.delete('<>'),
      :alert        => alert,
    }
    message.merge!(other_properties) if other_properties
    
    self.queue(Rapnd.config.queue_name, message)
  end

end