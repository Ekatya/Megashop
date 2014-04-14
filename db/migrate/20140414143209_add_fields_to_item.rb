class AddFieldsToItem < ActiveRecord::Migration
  def change
    add_column :items, :quantity, :integer
    add_column :items, :price, :float
    add_reference :items, :cart, index: true
    add_reference :items, :product, index: true
  end
end
