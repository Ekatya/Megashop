class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_name
      t.integer :cart_id
      t.text :adress
      t.string :email

      t.timestamps
    end
  end
end
