class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.references :trade, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.string :description
      t.float :low_price
      t.float :high_price
      t.date :expiration_date
      t.boolean :is_taken
      t.boolean :is_completed

      t.timestamps
    end
  end
end
