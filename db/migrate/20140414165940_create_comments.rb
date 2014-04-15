class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :mark
      t.string :name
      t.belongs_to :product, index: true

      t.timestamps
    end
  end
end
