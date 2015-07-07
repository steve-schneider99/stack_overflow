class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      flash[:notice] = "you have logged in!"
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "Login attempt failed"
      redirect_to log_in_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been logged out!"
    redirect_to "/"
  end

end
