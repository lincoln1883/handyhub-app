class CreateSupplierCities < ActiveRecord::Migration[7.0]
  def change
    create_table :supplier_cities do |t|
      t.references :users, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
