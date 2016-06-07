class Otp < ActiveRecord::Base
	def self.verify!(uuid, code, msisdn)
    message = { uuid: uuid, code: code, msisdn: msisdn }
  end
end
