class SelfieAccountController < ApplicationController
  def user_status
    msisdn = params['msisdn']
    respond_to do |format|
	    if msisdn == '9987654321'
	      format.json { render :json => {response: {user_status_code: '200', user_status_message: 'fedbook_user', uuid: '09062016120557-82968888710-1206429'},status_code: '200', status_message: 'fedbook_user' } }

	    else
	      # format.json { render :json => {response: {user_status_code: '202', user_status_message: 'new_user', uuid: '09062016121228-630885661016-371668'},status_code: '202', status_message: 'new_user' } }
          format.json { render :json => ({code_status: 500, status_message: 'error'}) }

	    end
    end
  end
end


