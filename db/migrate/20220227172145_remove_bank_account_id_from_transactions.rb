class RemoveBankAccountIdFromTransactions < ActiveRecord::Migration[6.1]
  def change
    remove_column :transactions, :bank_account_id
  end
end
