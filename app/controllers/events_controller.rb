class EventsController < ApplicationController
  before_action :autheniticate_user, {only: [:new, :create, :edit, :update]}
  before_action :event_user, {only: [:edit]}
  def index
    @friends = current_user.followings & current_user.followers
    @events = Event.all
  end

  def new
    @event = Event.new
    @friends = current_user.followings & current_user.followers
  end

  def create
    @event = Event.create(event_params)
    @friends = current_user.followings & current_user.followers
    if @event.save
      flash[:success] = "イベントを作成しました"
      redirect_to event_path(@event)
    else
      flash[:error] = "イベントの作成に失敗しました"
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
    @event = Event.find(params[:id])
    @friends = current_user.followings & current_user.followers
    if @event.update(event_params)
      flash[:success] = "イベントを更新しました"
      # roomを作成
      room = Room.create(event: @event)
      # 参加するユーザーを作成
      entry1 = Entry.create(user_id: @event.participant_id ,room_id: room.id)
      entry2 = Entry.create(user_id: @event.user.id ,room_id: room.id)
      # 承認ボタンを押したらトークルームに遷移
      redirect_to direct_message_path(@event.participant_id)
    else
      flash[:error] = "イベントの更新に失敗しました"
      render 'edit'
    end
  end

  private
  def event_params
    params.require(:event).permit(:user_id, :address, :title, :message, :is_finish, :request, :latitude, :longitude, :participant_id,
      event_users_attributes: [:id,:event_id, :user_id, :_destroy],
    )
  end

  def event_user
    @events = current_user.events
    @event = @events.find_by(id: params[:id])
    flash[:error]="アカウントが違います"
    redirect_to root_path unless @event
  end
end
