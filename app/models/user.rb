class User < ActiveRecord::Base
  has_many :selfie_accounts

  def self.verify!(uuid, otp, msisdn)
    message = { uuid: uuid, otp: otp, msisdn: msisdn }
  	user = User.find_or_create_by(msisdn: msisdn)
  end
  
end
