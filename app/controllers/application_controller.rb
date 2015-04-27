class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def authenticate_admin_user!
    if current_admin_user
      true
    else
      flash[:alert] = "Admin user required!"
      redirect_to new_user_session_path
    end
  end

  def current_admin_user
    current_user && current_user.admin? && current_user
  end

end
