class ChangeStartingBalanceToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :bank_accounts, :starting_balance, :float
  end
end
