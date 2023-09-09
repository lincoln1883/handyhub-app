class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.boolean :is_supplier
      t.boolean :is_active
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
