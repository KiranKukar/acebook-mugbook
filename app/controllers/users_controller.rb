class UsersController < ApplicationController
  def show
     
  end

  def index
    @users = User.all
  end
 
  def edit
   @user = User.find(params[:id])
  end
 
  def update
    current_user.update(user_params)
    redirect_to current_user
  end

  private
   
  def user_params
    params.require(:user).permit(:username, :name, :website,
      :bio, :email, :phone, :profile_image, uploads: [])
  end
end
