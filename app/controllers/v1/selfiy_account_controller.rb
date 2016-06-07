class V1::SelfiyAccountController < ApplicationController

  def user_status
    msisdn = params['msisdn']
    user = User.find_by_msisdn(msisdn)
    respond_to do |format|
	    if user.present?
	      format.json { render :json => ({code: 200, response: 'success'}) }
	    else
	      format.json { render :json => ({code: 202, response: 'failure'}) }
	    end
    end
  end

end
