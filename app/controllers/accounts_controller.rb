class AccountsController < ApplicationController
	def check 
      msisdn = params[:msisdn]
      uuid = params[:uuid]
      respond_to do |format|
        # if msisdn == "9987654321"
        if (msisdn == '919987654321' || msisdn == '9987654321')

           format.json { render :json => [{account_no: '11111', account_status: 'ACTIVE', account_type: 'Savings', last_transaction_time: '05-JUN-2016 10:05:50 AM', msisdn: '919946359819##IOS##09062016125817-38864846799-1306572'},
{account_no: '22222', account_status: 'ACTIVE', account_type: 'Savings', last_transaction_time: '06-JUN-2016 10:05:50 AM', msisdn: '919946359899##IOS##09062016125813-12864846799-1206572'}]}
# {account_no: '33333', account_status: 'ACTIVE', account_type: 'Savings', last_transaction_time: '07-JUN-2016 10:05:50 AM', msisdn: '919946359856##IOS##09062016125816-33864846799-1506572'}]}

 
        else
          format.json { render :json => ({error: '500', response: 'failure'})}
        end
      end
  end
end






 
