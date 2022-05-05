class Shoppinglistitem < ApplicationRecord
	
	has_many :listitems, dependent: :destroy 
	
	has_many :shoppinglists, through: :listitems
	
	validates :item_name, :price, :quantity, presence: true
end
