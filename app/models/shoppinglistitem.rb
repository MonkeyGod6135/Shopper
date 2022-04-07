class Shoppinglistitem < ApplicationRecord
	validates :item_name, :price, :quanity, presence: true
end
