class Admin::CategoryController < ApplicationController
  layout 'layouts/admin'

  def index
    @categories = Category.all
  end

  def new
    @categoy = Category.new
  end

  def create
    @categoy = Category.new(category_params)
    if @categoy.save
      redirect_to admin_category_index_path
    else
      render new
    end
  end 

  def edit
    @categoy = Category.find_by_id(category_params)
    p "============="
    p @categoy
  end 

  def update
    @categoy = Category.find_by_id(params[:id])
    @categoy.update(category_params)
    redirect_to admin_category_index_path
  end 

  def destroy
    @categoy = Category.find_by_id(params[:id])
    @categoy.destroy
    redirect_to admin_category_index_path
  end 

  private
  def category_params
  params.permit(:title)
end
end
