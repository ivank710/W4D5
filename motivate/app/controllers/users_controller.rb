class UsersController < ApplicationController
  def new
    @user = User.new 
    render :new
  end

  def create
    user = User.new(user_params)

    # debugger
    if user.save
      login(user)
      redirect_to user_url(user)
    else
      flash.now[:errors] = user.errors.full_messages
      render :new
    end
  end

  def show
    
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
