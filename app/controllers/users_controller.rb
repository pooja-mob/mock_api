class UsersController < ApplicationController

    def create
      @user = User.new(create_params)
      respond_to do |format|
      @user.uuid =  "1q2w3"
        if @user.save
          format.json { render :json => ({code: 200, response: 'user exits'}) }
        else
          format.json { render :json => ({code: 201, response: 'user doesnot exits'})}
        end
      end
    end

    def verify
      @user = User.verify!(params[:uuid], params[:otp],params[:msisdn])
      respond_to do |format|
        if @user.uuid == "1q2w3"
          format.json { render :json => ({code: 200, reason: 'success'}) }
        else
          format.json { render :json => ({code: 202, reason: 'failure'}) }
        end
      end
    end

    private

    def create_params
      { msisdn: params[:msisdn],uuid: params[:uuid]}
    end
    
end



