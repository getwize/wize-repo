class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user_subscribed?
  	user_signed_in? && current_user.subscribed?
  end

  helper_method :current_user_subscribed?

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:business_name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:business_name])
  end

end
