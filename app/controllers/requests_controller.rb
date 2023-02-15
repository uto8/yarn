class RequestsController < ApplicationController
  before_action :autheniticate_user

  def create
    @friends = current_user.followings & current_user.followers
    request = Request.create!(request_params)
    if request.save
      flash[:success] = "リクエストしました"
      redirect_to root_path
    end
  end

  def edit
    @request =Request.find(params[:id])
    @friends = current_user.followings & current_user.followers
  end

  def update
    @request = Request.find(params[:id])
    @friends = current_user.followings & current_user.followers
    if @request.update(
      params.require(:request).permit(:user_id, :event_id, :message,
        request_users_attributes: [:id, :request_id, :user_id, :_destroy]
      )
    )
      flash[:success] = "友達を追加しました"
      redirect_to root_path
    else
      flash[:error] = "友達の追加に失敗しました"
    end
  end

  private
  def request_params
    params.require(:request).permit(:user_id, :event_id)
  end
end
