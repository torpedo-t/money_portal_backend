class Transaction < ApplicationRecord
    belongs_to :bank_account
    validates :amount, presence: true
    validates_inclusion_of :transaction_type, :in => ["deposit", "withdraw"]
end
