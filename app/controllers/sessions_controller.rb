class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:is_admin] = user.admin
      redirect_to books_path
    else
      redirect_to login_url, notice: "Login Failed"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:is_admin] = nil
    redirect_to login_url, notice: "Logged Out"
  end
end

