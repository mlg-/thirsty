class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :profile_photo
    devise_parameter_sanitizer.for(:account_update) << :profile_photo
  end
end

# All administrative controllers should inherit from this controller
class AdminController < ApplicationController
  before_filter :ensure_admin!

  private

  def ensure_admin!
    unless current_user.admin?
      sign_out current_user

      redirect_to root_path

      return false
    end
  end
end
