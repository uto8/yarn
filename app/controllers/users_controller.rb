class UsersController < ApplicationController
  before_action :search
  before_action :autheniticate_user, {only: [:edit, :update]}
  before_action :correct_user, {only: [:edit, :update]}

  def index
    @q = User.ransack(params[:q])
    @user_results = @q.result(distinct: true)
    @check = params[:q]
    @users = User.page(params[:page]).per(1)
    @friends = current_user.followings & current_user.followers
  end
  def show
    @user = User.find(params[:id])
    @events = Event.where(user: current_user)
    @requests = Request.where(user: current_user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "ユーザーを更新しました"
      redirect_to user_path(@user)
    else
      flash[:error] = "ユーザーの更新に失敗しました"
      render "edit"
    end
  end

  def following
    @title = "フォロー"
    @user = User.find(params[:id])
    @users = @user.followings
    render 'show_follow'
  end

  def followers
    @title = "フォロワー"
    @user = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end

  def search
    @q = User.ransack(params[:q])
  end

  private

  def set_q
    @q = User.ransack(params[:q])
  end

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
end
