class UsersController < ApplicationController
  
  private
    def user_params
      params.require(:user).permit(:name, :prefecture_id)
    end
end
