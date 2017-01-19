class AddDeviseToUsers < ActiveRecord::Migration[5.0]
  def self.up
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :role  ,default: "regular_user"
    end
  end
end
