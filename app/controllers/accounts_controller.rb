class AccountsController < ApplicationController
	def check 
      msisdn = params[:msisdn]
      uuid = params[:uuid]
      respond_to do |format|
        if msisdn == "12345678"
          format.json { render :json => ({code: 200, response: 'success'}) }
        else
          format.json { render :json => ({code: 201, response: 'failure'})}
        end
      end
  end
end