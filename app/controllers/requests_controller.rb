class RequestsController < ApplicationController
  def create
    # @event = Event.find(params[:id])
    # @event.request(current_user, params[:message])
    # redirect_to root_path
    event = Event.find(params[:id])
    Request.create(request_params)
    redirect_to root_path
  end

  def new
    @request =Request.new
  end
  
  private
  def request_params
    params.permit(:user_id, :event_id, :message,
      request_users_attributes: [:id,:request_id, :user_id, :_destroy],
    )
  end
end
