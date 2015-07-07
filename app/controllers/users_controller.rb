class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Account has been created!"
      redirect_to "/"
    else
      flash[:alert] = "Account could not be created - Try again."
      render :new
    end
  end

  def edit
    
  end



private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
