class TransactionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :amount, :transaction_type, :memo, :bank_account
end