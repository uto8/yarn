class EventsController < ApplicationController
  def index
  end

  def new
    @event = Event.new
    @friends = current_user.followings & current_user.followers
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @requests = Request.where(event_id: params[:id])
    @event_users = EventUser.where(event_id: params[:id])
    if user_signed_in?
      @friends = current_user.followings & current_user.followers
    end
  end

  def edit
    @event = Event.find(params[:id])
    @friends = current_user.followings & current_user.followers
  end

  def update
    @event = Event.find_by(params[:id])
    if @event.update(event_params)
      redirect_to root_path
    end
  end

  private
  def event_params
    params.require(:event).permit(:user_id, :address, :title, :message, :is_finish, :request, :latitude, :longitude, :participant_id,
      event_users_attributes: [:id,:event_id, :user_id, :_destroy],
    )
  end
end
