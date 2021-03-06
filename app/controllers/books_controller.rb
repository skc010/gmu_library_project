class BooksController < ApplicationController
before_action :set_book, only: [:show, :edit, :update, :destroy]
 #  def index
 #    @books = Book.order(:title).page(params[:page])
 #  end

	# def search
 #       @books = Book.search(params[:search]).order(:title)
 #    end
  def index
    if params[:search]
      @books = Book.search(params[:search]).order(:title).page(params[:page])
    else
      @books = Book.order(:title).page(params[:page])
    end
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
			redirect_to books_url, notice: "Book #{@book.title} was successfully updated."
		else
			render action: 'edit'
		end
	end

	def destroy
		if @book.destroy
			redirect_to books_url
		end
	end

	def get_authors 
		@author_list = Author.all
	end



private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
    	params.require(:book).permit(:title, :isbn ,:author_id, :genre, :abstract, :pages, :image_cover_url, :published_on, :total_in_library)
    end



end
