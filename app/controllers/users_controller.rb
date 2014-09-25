class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @users = User.all
  end

  def index
    @user = User.new params[:user]
    if @user.save
      redirect_to category_path(@user)
    else
      render root_path
    end
  end

  def show
    @user = User.find params[:id]
  end

  def update
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
  end
end



  private
  def user_params
  	params.require(:user).permit(:name, :gravatar_image_string)
  end

end