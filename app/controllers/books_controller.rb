class BooksController < ApplicationController
before_action :set_book, only: [:show, :edit, :update, :destroy]
  def index
    @books = User.order(:title).page(params[:page])
  end


	def show
	end

	def new
		@book = Book.new
	end

	def edit
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to books_url, notice: "Book #{@book.title} was successfully created." 
		else
			render action: 'new'
		end
	end

	def update
		if @book.update(book_params)
			redirect_to books_url, notice: "Book #{@ook.title} was successfully updated."
		else
			render action: 'edit'
		end
	end

	def destroy
		if @book.destroy
			redirect_to books_url
		end
	end


private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
    	params.require(:title).permit(:isbn ,:author_id, :genre,  :genre, :abstract, :pages, :image_cover_url, :published_on, :total_in_library)
    end



end
