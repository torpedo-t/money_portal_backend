class CreateBankAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :bank_accounts do |t|
      t.string :name
      t.string :type
      t.integer :starting_balance
      t.integer :low_balance_alert

      t.timestamps
    end
  end
end
