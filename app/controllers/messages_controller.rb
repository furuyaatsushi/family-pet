class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def index
    @page_title = 'ダイレクトメッセージ'
    @room = Room.find(params[:room_id])    
    @messages = @room.messages
    @message = Message.new
    @entries = @room.entries
  end

  def create
    if Entry.where(:user_id => current_user.id, :room_id => params[:message][:room_id]).present?
      @message = Message.create(params.require(:message).permit(:user_id, :content, :room_id).merge(:user_id => current_user.id))
      #redirect_to "room_messages_path"
    else
      redirect_back(fallback_location: root_path)
    end
    #binding.pry
    if @message.save
      respond_to do |format|
        format.html
        format.json
      end
    else
      @messages = @groom.messages.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render template: "room/show"
    end
  end
end
