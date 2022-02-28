class Account < ApplicationRecord
    has_many :transactions, dependent: :destroy
    validates :name, presence: true
    validates :starting_balance, presence: true

    def update_balance(transaction)
        if transaction.transaction_type == 'Deposit'
            self.starting_balance = self.starting_balance + transaction.amount
            self.save
        elsif transaction.transaction_type == 'Withdraw'
            if self.starting_balance >= transaction.amount
            self.starting_balance = self.starting_balance - transaction.amount
            self.save
            else 
                return 'Balance too low...'
            end
        end
    end
end
