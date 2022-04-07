class ListsController < ApplicationController
	def index
		@lists = Shoppinglistitem.all
	end 

	def new
	end

	def create
		list = Shoppinglistitem.new(list_params)
		if shopper.save
			redirect_to "/lists"
		else
			flash[:errors] = shopper.errors.full_messages
			redirect_to "/lists/new"	
		end
	end

	
	private
	def list_params
		# params is a Rails object that gets the specified request
		# parameters
		params.require(:list).permit(:item_name, :price, :quanity)
	end
end
