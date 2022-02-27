class Api::V1::AccountsController < ApplicationController

    before_action :get_account, only: [:show, :destroy]

    def index
        # binding.pry
        accounts = Account.all
        render json: accounts
    end
    
    def create 
        # binding.pry
        account = Account.new(account_params)
        # byebug
        if account.save
            render json: account
        else
            render json: { errors: account.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        account = @account
        render json: account
    end

    def destroy 
        account = @account
        account.destroy
    end

    private

    def get_account
        @account = Account.find(params[:id])
    end

    def account_params
        params.require(:account).permit(:name, :account_type, :starting_balance, :low_balance_alert)
    end
end
