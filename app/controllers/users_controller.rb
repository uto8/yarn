class UsersController < ApplicationController
  before_action :search
  def index
    @q = User.ransack(params[:q])
    @user_results = @q.result(distinct: true)
    @check = params[:q]
    @users = User.page(params[:page]).per(1)
    @friends = current_user.followings & current_user.followers
  end
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find_by(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
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
    params.require(:user).permit(:name, :email)
  end
end
