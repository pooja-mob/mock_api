class TransactionsController < ApplicationController
	def transactions
    uuid = params[:uuid]
    uuid = 1234
    msisdn = params[:msisdn]
    account_number = params[:account]
    from_date = params[:from_date]
    to_date = params[:to_date]
    count = params[:count]
    respond_to do |format|
      if msisdn == '9987654321'
        format.json { render :json => 
        [{amount: '1000', avlbalance: '1004111', balance: '1000', bank_id: 'FB150894', date: '25-APR-2016 03:21:58 PM', details: 'INITIAL', instrument_number: '<null>', type:  'C'},
         {amount: '4', avlbalance: '10041', balance: '1004', bank_id: 'S12752672', date: '05-JUN-2016 10:05:50 AM', details: 'Int.Pd:21-04-2016 To 31-05-2016', instrument_number: '<null>', type: 'C' },
         {amount: '10001', avlbalance: '1000', balance: '10001', bank_id: 'FB1508943', date: '25-APR-2016 03:21:58 PM', details: 'FINAL', instrument_number: '<null>', type:  'C'},
         {amount: '674', avlbalance: '100400', balance: '561004', bank_id: 'S127526723', date: '05-JUN-2016 10:05:50 AM', details: 'Int.Pd:21-04-2016 To 31-05-2016', instrument_number: '<null>', type: 'D' },
         {amount: '100', avlbalance: '31004', balance: '561000', bank_id: 'FB1508944', date: '25-APR-2016 03:21:58 PM', details: 'INITIAL', instrument_number: '<null>', type:  'C'},
         {amount: '1114', avlbalance: '41004', balance: '981004', bank_id: 'S127526724', date: '15-JUN-2016 10:05:50 AM', details: 'Int.Pd:21-04-2016 To 31-05-2016', instrument_number: '<null>', type: 'C' },
         {amount: '13000', avlbalance: '51004', balance: '981000', bank_id: 'FB1508943', date: '02-MAR-2016 03:21:58 PM', details: 'FINAL', instrument_number: '<null>', type:  'D'},
         {amount: '4444', avlbalance: '61004', balance: '871004', bank_id: 'S127526723', date: '05-JUN-2016 10:05:50 AM', details: 'Int.Pd:21-04-2016 To 31-05-2016', instrument_number: '<null>', type: 'D' },
         {amount: '106780', avlbalance: '81004', balance: '761000', bank_id: 'FB1508942', date: '26-APR-2016 03:21:58 PM', details: 'INITIAL', instrument_number: '<null>', type:  'C'},
         {amount: '400', avlbalance: '91004', balance: '10044', bank_id: 'S121752672', date: '06-sep-2016 10:05:50 AM', details: 'Int.Pd:21-04-2016 To 31-05-2016', instrument_number: '<null>', type: 'C' },
        ]}

      else
        format.json { render :json => ({code: 202, response: 'failure'}) }

      end
    end
  end
end



