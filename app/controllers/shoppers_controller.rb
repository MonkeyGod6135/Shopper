class ShoppersController < ApplicationController
	def index
		@shoppers = Shoppinglist.all
	end 

	def new
	end

	def create
		shopper = Shoppinglist.new(shopper_params)
		if shopper.save
			redirect_to "/shoppers"
		else
			redirect_to "/shoppers/new"
		end
	end

	private
	def shopper_params
		# params is a Rails object that gets the specified request
		# parameters
		params.require(:shopper).permit(:shopping_list_name, :store, :date)
	end
end