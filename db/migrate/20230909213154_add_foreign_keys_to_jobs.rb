class AddForeignKeysToJobs < ActiveRecord::Migration[7.0]
  def change
    add_reference :jobs, :customer, foreign_key: { to_table: :users }
    add_reference :jobs, :supplier, foreign_key: { to_table: :users }
  end
end
