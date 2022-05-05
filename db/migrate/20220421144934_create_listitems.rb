class CreateListitems < ActiveRecord::Migration[7.0]
  def change
    create_table :listitems do |t|
      t.references :shoppinglistitems, null: false, foreign_key: true
      t.references :shoppinglists, null: false, foreign_key: true

      t.timestamps
    end
  end
end
