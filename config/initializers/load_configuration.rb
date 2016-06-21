ENCRYPTION_CIPHER = OpenSSL::Cipher::AES.new(128, :CBC).tap do |cipher|
  cipher.encrypt
  cipher.key = Base64.decode64 ENV['AES_ENCRYPTION_KEY']
  cipher.iv = Base64.decode64 ENV['AES_ENCRYPTION_IV']
end



DECRYPTION_CIPHER = OpenSSL::Cipher::AES.new(128, :CBC).tap do |cipher|
  cipher.decrypt
  cipher.key = Base64.decode64 ENV['AES_ENCRYPTION_KEY']
  cipher.iv  = Base64.decode64 ENV['AES_ENCRYPTION_IV']
end

# Bank configurations
# UBI_CONFIG = YAML.load_file('config/ubi_config.yml')['ubi'] unless Rails.env == 'test' # Refer to test_helper.rb

# # Standard library
# require 'csv'

# # Logging and caching
# CustomeLogger = Logger.new("log/ubi_#{Rails.env}.log")
# CustomeLogger.level = Logger::INFO
# CustomeLogger.datetime_format = '%Y-%m-%d %H:%M:%S'

# PlainLogger = Logger.new("log/access_#{Rails.env}.log")
# PlainLogger.level = Logger::INFO
# PlainLogger.datetime_format = '%Y-%m-%d %H:%M:%S'

# RedisInstance = Redis.new(host: 'localhost', port: ENV['REDIS_PORT'])

# class LogAndRedis
#   def log_and_cache(message, tag, key)
#     RedisInstance.append(key, "#{message}\n\n\n")
#     CustomeLogger.info "#{tag}: #{message}"
#   end

#   def info(data)
#     CustomeLogger.info data
#   end
# end

# UBILogger = LogAndRedis.new
