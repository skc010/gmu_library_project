class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.order(:name).page(params[:page])
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_url, notice: "User #{@user.name} was successfully created." 
    else
      render action: 'new'
    end
  end

  def update
    if @user.update(user_params)
        redirect_to users_url, notice: "User #{@user.name} was successfully updated."
    else
       render action: 'edit' 
    end
  end

  def destroy
    @user.destroy
      redirect_to users_url
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :user_id, :admin, :password, :password_confirmation)
    end
end