class Admin::CategoriesController < ApplicationController
  before_action :verify_access
  before_action :load_category, only: [:destroy, :update, :edit]
  layout "admin_application"

  def index
    @categories = Category.search(params[:key_seach]).newest
      .paginate page: params[:page], per_page: Settings.per_page
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    @category.save
    respond_to do |format|
      format.js
    end
  end

  def edit
    unless @category
      flash[:warning] = t "record_isnt_exist"
      redirect_to admin_categories_path
    end
  end

  def update
    if @category.update_attributes category_params
      flash[:info] = t "alert_result"
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    unless @category
      respond_to do |format|
        format.js {render "admin/shared/fail_update_or_del.js.erb"}
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

  def load_category
    @category = Category.find_by id: params[:id]
  end
end
