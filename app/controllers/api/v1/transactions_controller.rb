class Api::V1::TransactionsController < ApplicationController

    before_action :get_account

    def index 
        transactions = @account.transactions
        render json: transactions
    end

    def create 
        transaction = @account.transactions.new(transaction_params)
        if @account.update_balance(transaction) != 'Balance too low...'
            transaction.save
            render json: transaction
        else
            render json: { errors: transaction.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        transaction = Transaction.find(params[:id])
        render json: transaction
    end

    private

    def get_account 
        @account = Account.find(params[:account_id])
    end

    def transaction_params
        params.require(:transaction).permit(:amount, :transaction_type, :memo, :account_id)
    end
end
