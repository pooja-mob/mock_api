GET /v3/selfie_account/account_status 

request params : msisdn => mobile number of customer.

Requirement: Check database for the msisdn entry and give response.

sample response: success => { code: 200, response: "user exists" }
				 error   => { code : 201, response: "user doesn't exist"}



POST /v3/users : user#create

request params: msisdn => mobile number.

Requirement: Create an entry in users table with the given msisdn.

sample response: success => { code: 200, response: 'success', uuid: uuid }
				 error => { code: 202, response: 'failure' }



POST /v3/users/:uuid/verify : verify user otp.

request params: uuid => uuid generated in create user
				msisdn => mobile number
				otp => one time password.

requirement: Check database against msisdn, uuid and otp and verify the customer.

sample response: { code: 202, response: 'failure' }
				 { code: 202, response: 'success' }