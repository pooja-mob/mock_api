class OtpController < ApplicationController
	def verify

		uuid = params[:uuid]
		msisdn = params[:msisdn]
		code = params[:code]
        otp = Otp.verify!(params[:uuid],params[:msisdn],params[:code])
            # respond_to do |format|
        		if code =="0000" 
          			# render :text =>  { status: 'success'}
                render :json => {response: { user_status_message: 'success'},status_code: 200, status_message: 'fedbook_user' } 

          		else
                render :json => {response: { user_status_message: 'failure'},status_code: 200, status_message: 'fedbook_user' } 
        		end
      		# end
	end

end


