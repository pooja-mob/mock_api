class OtpController < ApplicationController
	def verify
		uuid = params[:uuid]
		msisdn = params[:msisdn]
		code = params[:code]
        otp = Otp.verify!(params[:uuid],params[:msisdn],params[:code])
            respond_to do |format|
        		if (uuid == "qwerty" && msisdn =="12345678") 
          			format.json { render :json => ({code: 200, reason: 'success'}) }
        		else
          			format.json { render :json => ({code: 202, reason: 'failure'}) }
        		end
      		end
	end

end