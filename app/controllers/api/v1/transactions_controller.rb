class Api::V1::TransactionsController < ApplicationController
    def index 
        transactions = Transaction.all
        render json: TransactionSerializer.new(transactions)
    end

    def create 
        transaction = Transaction.new(transaction_params)
        if transaction.save
            render json: TransactionSerializer.new(transaction), status: :accepted
        else
            render json: { errors: transaction.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show

    end

    def destroy

    end


    private

    def transaction_params
        params.require(:transaction).permit(:amount, :transaction_type, :memo, :bank_account_id)
    end
end
