class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def autheniticate_user
    if current_user==nil
      flash[:error]="ログインが必要です"
      redirect_to("/users/sign_in")
    end
  end

  def correct_user
    user = User.find(params[:id])
    unless current_user == user
      flash[:error] = "アカウントが違います"
      redirect_to("/")
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :birthday, :agreement])
  end
end
