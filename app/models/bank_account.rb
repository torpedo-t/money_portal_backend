class BankAccount < ApplicationRecord
    has_many :transactions, dependent: :destroy
    validates :name, presence: true
    validates :starting_balance, presence: true

    def update_balance(transaction)
        if transaction.transaction_type == 'deposit'
            self.balance = self.balance + transaction.amount
            self.save
        else
            transaction.transaction_type == 'withdraw'
            self.balance = self.balance - transaction.amount
            self.save
        end
    end
end
