class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :transaction_type, :memo, :account_id
  belongs_to :account
end
