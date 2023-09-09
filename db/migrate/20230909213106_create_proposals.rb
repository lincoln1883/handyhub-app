class CreateProposals < ActiveRecord::Migration[7.0]
  def change
    create_table :proposals do |t|
      t.references :users, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.float :price
      t.date :expiration_date
      t.boolean :is_accepted
      t.text :description

      t.timestamps
    end
  end
end
