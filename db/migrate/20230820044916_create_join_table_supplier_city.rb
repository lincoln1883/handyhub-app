class CreateJoinTableSupplierCity < ActiveRecord::Migration[7.0]
  def change
    create_join_table :suppliers, :cities do |t|
      t.index [:supplier_id, :city_id], unique: true
    end
  end
end
