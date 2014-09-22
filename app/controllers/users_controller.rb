class UsersController < ApplicationController

  private
  def user_params
  	params.require(:user).permit(:name, :gravatar_image_string)
  end

end