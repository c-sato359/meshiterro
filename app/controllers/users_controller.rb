class UsersController < ApplicationController
  def show
    @user =　post
    @post_images = @user.post_images.page(params[:page])
  end

  def edit
    @user
  end
  
  def update
    @user = get.user
    @user.ユーザーのアップデート
    redirect_to user_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
