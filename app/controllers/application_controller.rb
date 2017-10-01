class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  # サインアウト後のリダイレクト先URLを指定
  def after_sign_out_path_for(resource)
    '/users/sign_in'
  end

  # bootstrap用のkeyを許可
  add_flash_types :success, :info, :warning, :danger

  # deviseのストロングパラメーター設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :title, :profile, :icon])
  end
end
