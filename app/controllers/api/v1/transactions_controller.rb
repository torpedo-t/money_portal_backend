class Api::V1::TransactionsController < ApplicationController

    before_action :set_account

    def index 
        transactions = @account.transactions
        render json: TransactionSerializer.new(transactions)
        # render json: transactions
    end

    def create 
        # byebug
        transaction = @account.transactions.new(transaction_params)
        if @account.update_balance(transaction) != "Balance too low."
            transaction.save
            render json: TransactionSerializer.new(transaction), status: :accepted
            # render json: @account
        else
            render json: { errors: transaction.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        transaction = Transaction.find(params[:id])
        render json: transaction
    end


    private

    def set_account
        @account = BankAccount.find(params[:bank_account_id])
    end

    def transaction_params
        params.require(:transaction).permit(:amount, :transaction_type, :memo, :bank_account_id)
    end
end
