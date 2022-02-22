class TransactionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :amount, :transaction_type, :memo, :bank_account
end