class Admin::CategoriesController < ApplicationController
  before_action :verify_access
  layout :admin_application

  def index
    @categories = Category.newest.paginate page: params[:page],
      per_page: Settings.per_page
  end
end
