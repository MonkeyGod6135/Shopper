class CreateShoppinglistitems < ActiveRecord::Migration[7.0]
  def change
    create_table :shoppinglistitems do |t|
      t.string :item_name
      t.string :price
      t.string :quantity

      t.timestamps
    end
  end
end
