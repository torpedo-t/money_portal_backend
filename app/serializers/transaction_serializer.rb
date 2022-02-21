class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :transaction_type, :memo
end
