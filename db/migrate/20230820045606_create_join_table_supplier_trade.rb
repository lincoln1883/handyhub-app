class CreateJoinTableSupplierTrade < ActiveRecord::Migration[7.0]
  def change
    create_join_table :suppliers, :trades do |t|
      t.index [:supplier_id, :trade_id], unique: true
    end
  end
end
