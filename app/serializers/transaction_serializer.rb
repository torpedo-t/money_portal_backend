class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :transaction_type, :memo, :bank_account_id
  belongs_to :bank_account
end
