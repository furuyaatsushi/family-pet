class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @cases = Case.where(:user_id => params[:id])
    @room = Room.new
    @entry = Entry.new
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :prefecture_id)
    end
end
