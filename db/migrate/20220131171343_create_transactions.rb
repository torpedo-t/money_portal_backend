class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.string :type
      t.string :memo
      t.datetime :date
      t.integer :bank_account_id

      t.timestamps
    end
  end
end
