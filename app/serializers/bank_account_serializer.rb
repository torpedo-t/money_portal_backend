class BankAccountSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :account_type, :starting_balance, :low_balance_alert, :transactions
end
