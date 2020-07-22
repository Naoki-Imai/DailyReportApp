class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
    if @user.update(user_params)
      flash[:notice] = "プロフィールを修正しました。"
      redirect_to "/users/#{@user.id}"
    else
      flash[:alert] = "エラーが発生しました。修正してください"
      render "users/edit"
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:username, :email, :profile, :profile_image)
  end
end
