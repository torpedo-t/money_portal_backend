class Transaction < ApplicationRecord
    belongs_to :account
    validates :amount, presence: true
    validates :transaction_type, presence: true
    validates_inclusion_of :transaction_type, :in => ["Deposit", "Withdraw"]
end
