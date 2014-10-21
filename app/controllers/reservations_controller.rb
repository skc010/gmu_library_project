class ReservationsController < ApplicationController

before_action :set_user, only: [:index]

before_action :set_book, only: [:create]

  def index
    @reservations = @user.reservations.order('created_at desc')
  end

  def overdue
   @overdueset = Reservation.where( "due_on < ?", Time.zone.now  )
  end

  def show
   @overdueset = Reservation.where( "due_on < ?", Time.zone.now ).order(:user_id)
  end


  def destroy
    Reservation.find( params[ :reservation_id] ).delete
    redirect_to books_url, notice: 'Book was removed from Reservation'

  end


  def create
    today = Time.zone.now
    tomorrow = today + 7.days

    @reservation = @book.reservations.new( book_id: params[:book_id], user_id: session[:user_id],reserved_on: today, due_on: tomorrow )

    if @reservation.save
       redirect_to reservations_path @user , notice: 'Reservation saved!'
    else
       redirect_to books_index_path @user, notice: 'Reservation failed!'
    end
  end

private

  def set_user
    @user = User.find(session[:user_id])
  end

  def set_book
        @book = Book.find(params[:book_id])
  end
end
