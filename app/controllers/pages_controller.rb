class PagesController < ApplicationController
  def home
    if user_signed_in?
      @events = Event.joins(:user).where.not(user: current_user, user: {address: current_user.address}).order(id: "DESC")
    else
      @events = Event.order(id: "DESC")
    end
    @request = Request.new
    if @request.save
      flash[:success] = "リクエストを作成しました"
      redirect_to root_path
    else
      flash[:error] = "イベントの作成に失敗しました"
      render 'home'
    end
  end

  private
  def request_params
    params.permit(:user_id, :event_id)
  end
end
