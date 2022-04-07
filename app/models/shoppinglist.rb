class Shoppinglist < ApplicationRecord
	validates :shopping_list_name, :store, :date, presence: true
end
