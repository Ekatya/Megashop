class AddNameAndPositionToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :name, :string
    add_column :categories, :string, :string
    add_column :categories, :position, :integer
  end
end
