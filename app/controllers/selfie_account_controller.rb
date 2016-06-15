class SelfieAccountController < ApplicationController
  def user_status
    puts params.inspect
    msisdn = params['msisdn']
    # respond_to do |format|
    a = ({response: {user_status_code: 200, user_status_message: 'fedbook_user', uuid: '12343456789'},status_code: 200, status_message: 'fedbook_user' }.to_json)
    b = ({response: {user_status_code: 202, user_status_message: 'new_user', uuid: '1234'},status_code: 202, status_message: 'new_user' }.to_json)

	    if (msisdn == '9987654321' || msisdn == '919987654321')
            puts a.inspect
            # puts b.inspect
            # format.json
             render :text => "#{a}"
	      # format.json { render :json => {response: {user_status_code: 200, user_status_message: 'fedbook_user', uuid: '12343456789'},status_code: 200, status_message: 'fedbook_user' } }
	    else
                        puts b.inspect

             # format.json 
             render :text => "#{b}"
	      # format.json { render :json => {response: {user_status_code: 202, user_status_message: 'new_user', uuid: '1234'},status_code: 202, status_message: 'new_user' } }
          # format.json { render :json => ({code_status: 500, status_message: 'error'}) }
        
     
    end
  end
   def branches
        # respond_to do |format|
     	    
     	         # format.json {render :json => {status_code: '200', status_message: 'success'}}
     	           # format.json {
                   render :text =>{status_code: 200,status_message: 'success',response: {BANGALORE: ['new location','new location']}}

        	 # else
        		 # format.json {render :json => {status_code: '500', status_message: 'error'}}
        	 # end
        
    end

    def create
    	uuid = params['uuid']
    	branch= params['branch']
    	annual_income= params['annual_income']
    	email_id= params['email_id']
    	# respond_to do |format|
    		if uuid == '1234'
    			# format.json {
                render :text =>{status_code: 200,status_message: 'success',response: {status: 'success'}}

            else
            	 # format.json {
                 render :text => {status_code: 500, status_message: 'error'}
            end
        
    end
  
    def verify_otp
    	uuid = params['uuid']
    	otp = params['otp']
    	# respond_to do |format|
    		if uuid == "1234"
    			# format.json {
                render :text =>{status_code: 200,status_message: 'success',response: {status: 'success'}}

            else
            	 # format.json {
                render :text => {status_code: 500, status_message: 'error'}
            end
        
    end

    def upload_selfie
    	uuid = params['uuid']
    	# respond_to do |format|
    		if uuid == "1234"
    			# format.json {
                render :text =>{status_code: 200,status_message: 'success',response: {status: 'success'}}

            else
            	 # format.json {
                 render :text => {status_code: 500, status_message: 'error'}
            end
        # end
    end

    def upload_aadhaar
    	uuid = params['uuid']
    	aadhaar_card_deatails = params['aadhaar_card_deatails']
    	gps_position = params['gps_position']
    	# respond_to do |format|
    		if uuid == "1234"
    			# format.json {
                render :text =>{status_code: 200,status_message: 'success',response: {status: 'success'}}

            else
            	 # format.json {
                render :text => {status_code: 500, status_message: 'error'}
            end
        
    end

    def  upload_aadhaar_address
    	uuid = params['uuid']
    	# respond_to do |format|
    		if uuid == "1234"
    			# format.json {
                render :text =>{status_code: 200,status_message: 'success',response: {status: 'success'}}           else
            	 # format.json {
                render :text => {status_code: 500, status_message: 'error'}
            end
        # end
    end

    def upload_pan_image
    	uuid = params['uuid']
    	# respond_to do |format|
    		if uuid == "1234"
         	    # format.json {render :json =>{status_code: '200',status_message: 'success',response: {status: 'success'}}}
         	    # format.json {
                render :text => {status_code: 200,status_message: 'success',response:{aadhaar_name:'KIREN PAUL',aadhaar_number: '889700488804',aadhaar_address: 'PARACKA HOUSE,SOUTH ATTARA,MOOKKANNOOR P O,MOOKKANNOOR,MOOKKANNUR,ERNAKULAM,KERALA',aadhaar_dob: 'null',aadhaar_fathers_name: 'null',aadhaar_yob: '1987',status: 'success'}}

            else
            	 # format.json {
                 render :text => {status_code: 500, status_message: 'error'}
            end
        # end
    end

    def upload_pan_details
    	uuid = params['uuid']
    	pan_number = params['pan_number']
    	pan_name = params['pan_name']
    	# respond_to do |format|
    		if uuid == "1234"
                 # format.json {render :json =>{status_code: '200',status_message: 'success',response: {status: 'success'}}}
                 # format.json {
                render :text => {status_code: 200,status_message: 'success',response:{message: 'Welcome to Federal-YOur Perfect Banking Partner! Your Account Number is 1234567890 \n  \n Click OK to view your m-passbook FedBook using the pin :xxxx'}}

            else
            	 # format.json {
                 render :text => {status_code: 500, status_message: 'error'}
            end
        # end
    end
  
end


