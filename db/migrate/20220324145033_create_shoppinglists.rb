class CreateShoppinglists < ActiveRecord::Migration[7.0]
  def change
    create_table :shoppinglists do |t|
      t.string :shopping_list_name
      t.string :store
      t.string :date

      t.timestamps
    end
  end
end
