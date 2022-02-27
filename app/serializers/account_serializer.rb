class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :account_type, :starting_balance, :low_balance_alert
  has_many :transactions
end
