class Shoppinglist < ApplicationRecord

	has_many :listitems, dependent: :destroy 
	
	has_many :shoppinglistitems, through: :listitems
	
	validates :shopping_list_name, :store, :date, presence: true
end
