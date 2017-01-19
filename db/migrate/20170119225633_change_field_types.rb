class ChangeFieldTypes < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :numeric_id, :string
    change_column :users, :alternative_numeric_id, :string
  end
end
