module Crypto
  # Encryption and Decryption
  def encrypt(data)
    return data if (Rails.env.development? and params[:encrypt] == 'false')  # This is for development only. Never merge this to master.
    ENCRYPTION_CIPHER.reset
    encrypted = ENCRYPTION_CIPHER.update(data) + ENCRYPTION_CIPHER.final
    Base64.strict_encode64(encrypted)
  end

  def decrypt(data)
    return data if (Rails.env.development? and params[:encrypt] == 'false')
    DECRYPTION_CIPHER.reset
    DECRYPTION_CIPHER.update(Base64.decode64(data)) + DECRYPTION_CIPHER.final
  end
end
