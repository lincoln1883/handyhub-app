class CreateProposals < ActiveRecord::Migration[7.0]
  def change
    create_table :proposals do |t|
      t.decimal :price, precision: 10, scale: 2
      t.date :expiration_date
      t.boolean :is_accepted

      t.timestamps
    end
  end
end
