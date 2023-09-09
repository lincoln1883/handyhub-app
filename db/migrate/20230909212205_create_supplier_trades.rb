class CreateSupplierTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :supplier_trades do |t|
      t.references :trades, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
