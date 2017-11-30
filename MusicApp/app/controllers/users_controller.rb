class UsersController < ApplicationController
  def new
    user = User.new
  end
  
  def index 
    render :index
  end

  def create
    user = User.new(user_params)
    if user.save
      login(user)
      redirect_to users_url
    else
      flash.now[:errors] = user.errors.full_messages
      render :new
    end
  end
  
  def show
    
  end
  
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
