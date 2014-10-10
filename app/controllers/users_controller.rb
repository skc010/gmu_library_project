class UsersController < ApplicationController
	before_action :set_user, only[:show, :edit, :update, :destory]
	def index 
		@users = User.order('name desc')
	end

	def show
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user, notice:"{@user.name} was created!"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			redirct_to @user, notice: "#{@user.name} was updated!"
		else
			render :new
		end
	end
	
	def destory
		@user.destory
		rediect_to users_url
	end

private

	def user_params
		params.require(:user).permit(:name, :user_id, :password_digest, :admin)
	end

	def set_user
		@user = User.find(params[:user_id])
	end

end

