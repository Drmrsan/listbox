class ListItemsController < ApplicationController
	before_action :find_list, only: [:create]

	def create

		@list_item = @list.list_items.create(list_item_params)

		if @list_item.save
			redirect_to :back
		else
			render 'new'
		end

	end


	private
	def list_item_params
		params.require(:list_item).permit(:title)
	end

	def find_list
		@list = List.find(params[:list_id])
	end
end
