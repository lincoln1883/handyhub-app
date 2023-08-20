class AddColumnToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :countries_id, :bigint, null: false
  end
end
