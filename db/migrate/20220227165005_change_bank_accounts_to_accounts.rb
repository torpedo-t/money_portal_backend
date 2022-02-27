class ChangeBankAccountsToAccounts < ActiveRecord::Migration[6.1]
  def change
    rename_table :bank_accounts, :accounts
  end
end
