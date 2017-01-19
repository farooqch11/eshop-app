class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :adress
      t.string :country
      t.string :city
      t.string :product_name
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
