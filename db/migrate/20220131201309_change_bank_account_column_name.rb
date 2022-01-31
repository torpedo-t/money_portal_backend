class ChangeBankAccountColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :bank_accounts, :type, :account_type
  end
end
