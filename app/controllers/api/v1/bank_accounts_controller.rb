class Api::V1::BankAccountsController < ApplicationController

    before_action :get_account, only: [:show, :destroy]

    def index
        # binding.pry
        bank_accounts = BankAccount.all
        render json: bank_accounts
    end
    
    def create 
        # binding.pry
        bank_account = BankAccount.new(bank_account_params)
        # byebug
        if bank_account.save
            render json: bank_account
        else
            render json: { errors: bank_account.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        bank_account = @account
        render json: bank_account
    end

    def destroy 
        bank_account = @account
        bank_account.destroy
    end

    private

    def get_account
        @account = BankAccount.find(params[:id])
    end

    def bank_account_params
        params.require(:bank_account).permit(:name, :account_type, :starting_balance, :low_balance_alert)
    end
end
