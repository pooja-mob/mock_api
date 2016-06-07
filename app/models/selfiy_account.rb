class SelfiyAccount < ActiveRecord::Base
  belongs_to :user

  def self.verify_user(params)
    msisdn = params[:msisdn]
    find_by_msisdn()
  end
  
end
    

    
     