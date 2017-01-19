class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?




  def after_sign_in_path_for(resource)
    if resource.role == "admin"
      admin_dashboard_path
    else
      root_path
    end
  end


  def current_admin_user
    return nil if user_signed_in? && current_user.role != "admin"
    current_user
  end

  def authenticate_admin_user!
    authenticate_user!
    if current_user.role != "admin"
      redirect_to root_path
    end
  end

  protected

  def configure_permitted_parameters
    added_attrs = [:numeric_id,:alternative_numeric_id, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end
