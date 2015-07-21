class UsersController < ApplicationController
  def index
    @users = User.all
    @user_images = UserImage.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.all
    @user_image = @user.user_image

  end
end
