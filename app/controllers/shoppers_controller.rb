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
			flash[:errors] = shopper.errors.full_messages
			redirect_to "/shoppers/new"	
		end
	end

	def edit
		@shoppers = Shoppinglist.find(params[:id])
	end 

	def update
	shopper = Shoppinglist.find(params[:id])
	if shopper.update(shopper_params)
		redirect_to "/shoppers"
	else
		flash[:errors] = shopper.errors.full_messages
		redirect_to "/shoppers/#{shopper.id}/edit"
	end
end

	def delete
		@shopper = Shoppinglist.find(params[:id])
		end 

	def destroy
		shopper = Shoppinglist.find(params[:id])
		shopper.destroy
		redirect_to "/shoppers"
	end

	private
	def shopper_params
		# params is a Rails object that gets the specified request
		# parameters
		params.require(:shopper).permit(:shopping_list_name, :store, :date)
	end
end
