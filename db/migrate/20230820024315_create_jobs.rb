class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.text :description
      t.boolean :is_taken
      t.boolean :is_completed
      t.decimal :high_price, precision: 10, scale: 2
      t.decimal :low_price, precision: 10, scale: 2
      t.date :expiration_date

      t.timestamps
    end
  end
end
