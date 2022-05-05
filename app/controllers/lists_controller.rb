class ListsController < ApplicationController
	def index
		@lists = Shoppinglistitem.all
	end 

	def new
	end

	def create
		list = Shoppinglistitem.new(list_params)
		if list.save
			redirect_to "/lists"
		else
			flash[:errors] = list.errors.full_messages
			redirect_to "/lists/new"	
		end
	end

	def edit
	@list = Shoppinglistitem.find(params[:id])
end 

	def update
	list = Shoppinglistitem.find(params[:id])
	if list.update(list_params)
		redirect_to "/lists"
	else
		flash[:errors] = list.errors.full_messages
		redirect_to "/lists/#{list.id}/edit"
	end
end

	def delete
		@list = Shoppinglistitem.find(params[:id])
		end 

	def destroy
		list = Shoppinglistitem.find(params[:id])
		list.destroy
		redirect_to "/lists"
	end


	private
	def list_params
		# params is a Rails object that gets the specified request
		# parameters
		params.require(:list).permit(:item_name, :price, :quantity)
	end
end