class EventsController < ApplicationController
  def index
  end

  def new
    @event = Event.new
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
  end

  def edit
  end

  private
  def event_params
    params.require(:event).permit(:user_id, :address, :title, :message, :is_finish, :request, :latitude, :longitude)
  end
end
