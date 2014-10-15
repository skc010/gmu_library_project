class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.order(:name)
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

    respond_to do |format|
      if @user.save
        redirect_to users_url, notice: "User #{@user.name} was successfully created." 
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
          redirect_to users_url, notice: "User #{@user.name} was successfully updated."
      else
         render action: 'edit' 
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      redirect_to users_url
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end