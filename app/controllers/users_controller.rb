class UsersController < ApplicationController
  def new
    @users = User.all
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.d
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :username, :boardtype, :profpic, :password, :password_confirmation)
  end
end

