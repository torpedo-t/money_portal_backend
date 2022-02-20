class ChangeLowBalanceAlertToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :bank_accounts, :low_balance_alert, :float
  end
end
