class DirectMessagesController < ApplicationController
  def show
    @room = Entry.find_by(user_id: current_user.id).room
    # entry = Entry.find_by(user_id: params[:id], room_id: @room.id)
    @direct_message = DirectMessage.new
    @direct_messages = DirectMessage.all
    @user = User.find(params[:id])
  end

  def create
    @direct_message = DirectMessage.create!(direct_message_params)
    if @direct_message.save
      flash[:success] = "メッセージを送信しました"
    else
      flash[:error] = "メッセージの送信に失敗しました"
    end
    redirect_to request.referer
  end

  private
  def direct_message_params
    params.require(:direct_message).permit(:content, :room_id, :user_id)
  end
end
