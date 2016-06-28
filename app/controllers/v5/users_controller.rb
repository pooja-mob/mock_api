class V5::UsersController < ApplicationController

    def register
      msisdn = decrypt params[:msisdn]
      web_hash = decrypt params[:web_hash]
      custid = decrypt params[:custid]
      if ( msisdn == '91|9987654321')
            render text: encrypt({status_code: 200,status_message:"success",request:{method:"user_register"},response:{status:"success",uuid:"eb6703bf-3fbf-4dbf-a396-5221a22df5ca",user_id:"9"},version:5}.to_json)
      else
            render text: encrypt({status_code: 211,status_message:"failure",request:{method:"user_register"},response:{status:"failure",uuid:"ab6703bf-4fbf-5dbf-b396-6221a22df5ca",user_id:"9"},version:5}.to_json)
      end
    end

    def verify
      uuid = decrypt params[:uuid]
      otp = decrypt params[:otp]
      msisdn = decrypt params[:msisdn]
      key =  params[:key]
      user_id =  params[:user_id]
        if (uuid == "eb6703bf-3fbf-4dbf-a396-5221a22df5ca" && otp =="1234" && msisdn == '91|9987654321' )
          render text: encrypt({status_code:200,status_message:"success",request:{method:"user_verify"},response:{status:"success",auth_token:"e738d653fee057c6f85b",api_key:"e738d653fee057c6f85b"},version:5}.to_json)
        else
          render text: encrypt({status_code:211,status_message:"failure",request:{method:"user_verify"},response:{status:"failure",auth_token:"e738d653fee057c6f85b",api_key:"e738d653fee057c6f85b"},version:5}.to_json)
      end
    end

    def accounts
      msisdn =  decrypt params[:msisdn]
      key = params[:key]
      if (msisdn.present?)
        render text: encrypt({"status_code"=>200, "status_message"=>"success", "request"=>{"method"=>"accounts"}, "response"=>{"name"=>"John Doe", "mobile_number"=>"9769929215", "customer_type"=>"PBPB", "accounts"=>[{"ledger_balance"=>7355.0, "available_balance"=>7355.0, "funds_in_clearing"=>0.0, "ffd_balance"=>0.0, "user_defined_balance"=>7355.0, "customer_id"=>"000001382", "customer_name"=>"SAILESH B. SURVE", "account_name"=>"SAILESH B. SURVE", "account_open_date"=>"19940803", "scheme_code"=>"SB101", "account_type"=>"savings", "account_status"=>"A", "mode_of_operation"=>"001", "joint_holder_name_1"=>"", "joint_holder_name_2"=>"", "joint_holder_name_3"=>"", "gl_subhead_code"=>"13421", "account_sol_id"=>"2414", "drawing_power_har_lien_amount"=>0.0, "branch"=>"POWAI, MUMBAI", "ifsc"=>"BARB0POWBOM", "account_number"=>"24140100001382"}, {"ledger_balance"=>92385.62, "available_balance"=>92385.62, "funds_in_clearing"=>0.0, "ffd_balance"=>0.0, "user_defined_balance"=>92385.62, "customer_id"=>"000002612", "customer_name"=>"SHAM MURTI MEHTA", "account_name"=>"SHAM MURTI MEHTA", "account_open_date"=>"19980714", "scheme_code"=>"SB101", "account_type"=>"savings", "account_status"=>"A", "mode_of_operation"=>"003", "joint_holder_name_1"=>"RAJKUMARI MEHTA", "joint_holder_name_2"=>"", "joint_holder_name_3"=>"", "gl_subhead_code"=>"13421", "account_sol_id"=>"2414", "drawing_power_har_lien_amount"=>0.0, "branch"=>"POWAI, MUMBAI", "ifsc"=>"BARB0POWBOM", "account_number"=>"24140100002610"}, {"ledger_balance"=>100000.0, "available_balance"=>100000.0, "funds_in_clearing"=>0.0, "ffd_balance"=>0.0, "user_defined_balance"=>100000.0, "customer_id"=>"000001382", "customer_name"=>"SAILESH B. SURVE", "account_open_date"=>"20101201", "deposit_period_months"=>"012", "deposit_period_days"=>"000", "account_maturity_date"=>"20111201", "deposit_type"=>"Recurring", "scheme_code"=>"TD113", "joint_holder_name_1"=>"", "joint_holder_name_2"=>"", "joint_holder_name_3"=>"", "interest_rate"=>7.75, "deposit_amount"=>10000.0, "maturity_amount"=>125125.0, "currency_code"=>"INR", "branch"=>"POWAI, MUMBAI", "ifsc"=>"BARB0POWBOM", "account_number"=>"24140300021087", "account_type"=>"deposit"}]}, "version"=>3}.to_json )

      end
    end 
    

    def transactions
      msisdn =  params[:msisdn]
      key =  params[:key]
      pagination = params[:pagination]
      paginationKey =  params[:paginationKey]
      from =  params[:from]
      to = params[:to]
      account_number = params[:account_number]
       # if (account == '11111')
        if (account_number == '24140100001382')
        render text: encrypt({"status_code"=>200, "status_message"=>"success", "request"=>{"method"=>"transaction"}, "response"=>{"account_number"=>"24140100001382", "balances"=>{"ledger_balance"=>92385.62, "available_balance"=>92385.62, "funds_in_clearing"=>0.0, "ffd_balance"=>0.0, "user_defined_balance"=>92385.62}, "transactions"=>[{"date"=>"2016/06/06", "transaction_id"=>"S39100", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"savings", "tran_value_date"=>"2016/06/06", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649628", "postdate"=>"2016/06/06 19:12:02", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S35780", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"credit", "tran_value_date"=>"2016/06/07", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649723", "postdate"=>"2016/06/24 11:24:08", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S56708", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"debit", "tran_value_date"=>"2016/06/07", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649790", "postdate"=>"2016/06/07 12:00:31", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S57374", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"credit", "tran_value_date"=>"2016/06/07", "amount"=>"1.00", "description"=>"CMS-FT//By Oriental Insuranc", "postdate"=>"2016/06/07 15:16:11", "instrument_number"=>"", "balance"=>"0.00"}], "pagination"=>"N", "paginationKey"=>"20160607   S57374   220160607151611             0.00"}, "version"=>3} .to_json)
        # render :text => {"status_code"=>200, "status_message"=>"success", "request"=>{"method"=>"transaction"}, "response"=>{"account_number"=>"24140100001382", "balances"=>{"ledger_balance"=>92385.62, "available_balance"=>92385.62, "funds_in_clearing"=>0.0, "ffd_balance"=>0.0, "user_defined_balance"=>92385.62}, "transactions"=>[{"date"=>"2016/06/06", "transaction_id"=>"S39100", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"savings", "tran_value_date"=>"2016/06/06", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649628", "postdate"=>"2016/06/06 19:12:02", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S45790", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"credit", "tran_value_date"=>"2016/06/07", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649723", "postdate"=>"2016/06/07 11:24:08", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S51708", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"credit", "tran_value_date"=>"2016/06/07", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649790", "postdate"=>"2016/06/07 12:00:31", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S57374", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"credit", "tran_value_date"=>"2016/06/07", "amount"=>"1.00", "description"=>"CMS-FT//By Oriental Insuranc", "postdate"=>"2016/06/07 15:16:11", "instrument_number"=>"", "balance"=>"0.00"}], "pagination"=>"N", "paginationKey"=>"20160607   S57374   220160607151611             0.00"}, "version"=>3} 


     #     render text: encrypt([{status_code:200,status_message:"success",request:{method:"transaction"},response:{account_number:"24140100002610",balances:
     #     {ledger_balance:92385.62,available_balance:92385.62,funds_in_clearing:0.0,ffd_balance:0.0,user_defined_balance:92385.62},transactions:[{date:"2016/06
     #     /06",transaction_id:"S39100",part_tran_id:"2",transaction_type_1:"T",transaction_sub_type:"BI",transaction_type:"credit",tran_value_date:"2016/06/06",amount:"1.00",description:"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649628",postdate:"2016/06/06 19:12:02",instrument_number:"",balance:"0.00"},{date:"2016/06
     #   /07",transaction_id:"S45790",part_tran_id:"2",transaction_type_1:"T",transaction_sub_type:"BI",transaction_type:"credit",tran_value_date:"2016/06/07",amount:"1.00",description:"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649723",postdate:"2016/06/07 11:24:08",instrument_number:"",balance:"0.00"},{date:"2016/06
     # /07",transaction_id:"S51708",part_tran_id:"2",transaction_type_1:"T",transaction_sub_type:"BI",transaction_type:"credit",tran_value_date:"2016/06/07",amount:"1.00",description:"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649790",postdate:"2016/06/07 12:00:31",instrument_number:"",balance:"0.00"},{date:"2016/06
     # /07",transaction_id:"S57374",part_tran_id:"2",transaction_type_1:"T",transaction_sub_type:"BI",transaction_type:"credit",tran_value_date:"2016/06/07",amount:"1.00",description:"CMS-FT//By Oriental Insuranc",postdate:"2016/06/07 15:16:11",instrument_number:"",balance:"0.00"}],pagination:"N",paginationKey:"20160607   S57374   220160607151611             0.00"},version:3}])
    
       elsif (account_number == '24140100002610')
         
        render text: encrypt({"status_code"=>200, "status_message"=>"success", "request"=>{"method"=>"transaction"}, "response"=>{"account_number"=>"24140100002610", "balances"=>{"ledger_balance"=>92385.62, "available_balance"=>92385.62, "funds_in_clearing"=>0.0, "ffd_balance"=>0.0, "user_defined_balance"=>92385.62}, "transactions"=>[{"date"=>"2016/06/06", "transaction_id"=>"S39101", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"savings", "tran_value_date"=>"2016/06/06", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649628", "postdate"=>"2015/06/06 19:12:02", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S25890", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"credit", "tran_value_date"=>"2016/03/07", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649723", "postdate"=>"2016/09/31 11:24:08", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S59708", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"debit", "tran_value_date"=>"2016/06/07", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649790", "postdate"=>"2016/06/07 12:00:31", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S17374", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"credit", "tran_value_date"=>"2016/06/07", "amount"=>"1.00", "description"=>"CMS-FT//By Oriental Insuranc", "postdate"=>"2016/06/07 15:16:11", "instrument_number"=>"", "balance"=>"0.00"}], "pagination"=>"N", "paginationKey"=>"21160607   S67374   220160607151612            0.00"}, "version"=>3} .to_json)

      else (account_number == '24140300021087')
        render text: encrypt({"status_code"=>200, "status_message"=>"success", "request"=>{"method"=>"transaction"}, "response"=>{"account_number"=>"24140300021087", "balances"=>{"ledger_balance"=>92385.62, "available_balance"=>92385.62, "funds_in_clearing"=>0.0, "ffd_balance"=>0.0, "user_defined_balance"=>92385.62}, "transactions"=>[{"date"=>"2016/06/06", "transaction_id"=>"S39102", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"credit", "tran_value_date"=>"2016/06/06", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649628", "postdate"=>"2014/06/06 19:12:02", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S1190", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"credit", "tran_value_date"=>"2016/08/07", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649723", "postdate"=>"2016/04/01 11:24:08", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S50708", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"debit", "tran_value_date"=>"2016/06/07", "amount"=>"1.00", "description"=>"CMS-FT/FINOLEX/22 MAY 13 2151000457/0406201649790", "postdate"=>"2016/06/07 12:00:31", "instrument_number"=>"", "balance"=>"0.00"}, {"date"=>"2016/06/07", "transaction_id"=>"S87374", "part_tran_id"=>"2", "transaction_type_1"=>"T", "transaction_sub_type"=>"BI", "transaction_type"=>"credit", "tran_value_date"=>"2016/06/07", "amount"=>"1.00", "description"=>"CMS-FT//By Oriental Insuranc", "postdate"=>"2016/06/07 15:16:11", "instrument_number"=>"", "balance"=>"0.00"}], "pagination"=>"N", "paginationKey"=>"22160607   S77374   220160607151611             0.00"}, "version"=>3} .to_json)

    end
  end
    
end



