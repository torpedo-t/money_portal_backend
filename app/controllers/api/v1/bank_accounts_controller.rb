class Api::V1::BankAccountsController < ApplicationController
    def index
        bank_accounts = BankAccount.all
        render json: BankAccountSerializer.new(bank_accounts)
    end
    
    def create 
        bank_account = BankAccount.new(bank_account_params)
        # byebug
        if bank_account.save
            render json: BankAccountSerializer.new(bank_account), status: :accepted
        else
            render json: { errors: bank_account.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        bank_account = BankAccount.find[params[:id]]
        render json: bank_account
    end

    def destroy 
        bank_account = BankAccount.find(params[:id])
        bank_account.destroy
    end

    private

    def bank_account_params
        params.require(:bank_account).permit(:name, :account_type, :starting_balance, :low_balance_alert)
    end
end
