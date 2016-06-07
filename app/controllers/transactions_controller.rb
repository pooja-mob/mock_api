class TransactionsController < ApplicationController
	def transactions
    uuid = params[:uuid]
    msisdn = params[:msisdn]
    account_number = params[:account]
    from_date = params[:from_date]
    to_date = params[:to_date]
    count = params[:count]
    respond_to do |format|
      if msisdn == '12345678'
        format.json { render :json => ({code: 200, response: 'success'}) }
      else
        format.json { render :json => ({code: 202, response: 'failure'}) }
      end
    end
  end
end
