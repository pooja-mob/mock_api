class SelfieAccountController < ApplicationController
  def user_status
    msisdn = params['msisdn']
    respond_to do |format|
	    if msisdn == '12345678'
	      format.json { render :json => ({code: 200, response: 'success'}) }
	    else
	      format.json { render :json => ({code: 202, response: 'failure'}) }
	    end
    end
  end
end
