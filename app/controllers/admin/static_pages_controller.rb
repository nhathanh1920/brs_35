class Admin::StaticPagesController < ApplicationController
  before_action :verify_access
  layout "admin_application"

  def home
  end
end
