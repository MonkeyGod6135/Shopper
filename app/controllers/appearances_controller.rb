class AppearancesController < ApplicationController
	def index
		@shoppers = Shoppinglist.all
		@lists = Shoppinglistitem.all
		return @shoppers, @lists
	end

	def create
		appearance = Listitem.new(appearance_params)
		if appearance.save
			redirect_to "/shoppers"
		else
			flash[:errors] = appearance.errors.full_messages
			redirect_to "/appearances/index"
		end
	end
	
	private
	def appearance_params
		# params is a Rails object that gets the specified request
		# parameters
		params.require(:appearance).permit(:shoppinglists_id, :shoppinglistitems_id)
	end
end
