class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_locale

  protected

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

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

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end
end
