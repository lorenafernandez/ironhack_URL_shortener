class LinksController < ApplicationController
	def index
		@links = Link.all
	end
	def new
		@link = Link.new
	end

	def create
		@link = Link.new(entry_params)
		@link.asign_short_link
		if @link.save
			redirect_to links_path
		else
			render 'new'
		end
	end

	def show
		@link = Link.find_by id: params[:id]
		@link.how_many_times_has_been_visited
		@link.save
	end

	def redirect
		@link = Link.find_by short_link: params[:id]
		redirect_to @link.long_link_url
	end

	private
	def entry_params
		params.require(:link).permit(:long_link)
	end
end
