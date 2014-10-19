class ReservationsController < ApplicationController
	before_action :set_reservation, only: [:destroy]
	def new
		@reservation = Reservation.new
	end

	def create
	    @reservation = Reservation.new(
	    	reservation_params.merge!(:reserved_on => (Time.now).to_date,
	    	 :due_on => 7.days.since(Time.now).to_date,:user_id => session[:user_id]))

	    if @reservation.save
	    	find_book
	      	redirect_to @book
	      	flash[:success] = "Reservation was created!"
	    else
	      render :new
    	end
  	end

	def destroy
	    @reservation.destroy
	    redirect_to reservations_path
	end

	def index
		@reservations = User.find(session[:user_id]).reservations
	end

	def show
		@reservations = Reservation.order(:due_on)
	end

  	private

  	def reservation_params
    	params.require(:reservation).permit(:book_id)
    	
    end

    def find_book
    	@book= Book.find(@reservation.book_id)
    end

    def set_reservation
    	@reservation = Reservation.find(params[:id])
  	end

end
