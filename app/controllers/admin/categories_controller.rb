class Admin::CategoriesController < ApplicationController
  before_action :verify_access
  layout "admin_application"

  def index
    @categories = Category.newest.paginate page: params[:page],
      per_page: Settings.per_page
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    @category.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @category = Category.find_by id: params[:id]
    unless @category
      respond_to do |format|
        format.js {render "fail_update_or_del.js.erb"}
      end
    else
      @category.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  private
  def category_params
    params.require(:category).permit :name
  end
end
