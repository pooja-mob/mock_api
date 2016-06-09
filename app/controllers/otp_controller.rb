class OtpController < ApplicationController
	def verify
		uuid = params[:uuid]
		msisdn = params[:msisdn]
		code = params[:code]
        otp = Otp.verify!(params[:uuid],params[:msisdn],params[:code])
            respond_to do |format|
        		if msisdn =="9987654321" 
          			format.json { render :json => { status: 'success'}}
          		else
          			format.json { render :json => {status: 'failure'}}
        		end
      		end
	end

end