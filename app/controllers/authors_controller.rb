class AuthorsController < ApplicationController
	before_action :set_author, only: [:show, :edit, :update, :destroy]

	def index

	end

	def show

	end

	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to @author, notice: "#{@author.name} was added!" 
		else
			render :new
		end
	end

	def edit
		
	end

	private

	def author_params
		params.require(:author).permit(:name, :dob, :nationality, :biography, :image_url, :awards)
	end

	def set_author
		@author = Author.find(params[:id])
	end

end
