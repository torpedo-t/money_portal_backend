class RemoveDateColumnFromTransaction < ActiveRecord::Migration[6.1]
  def change
    remove_column :transactions, :date
  end
end
