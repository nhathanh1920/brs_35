class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  protected

  def verify_access
    unless verify_user_access?
      flash[:danger] = t "require_login"
      redirect_to root_url
    end
  end
end
