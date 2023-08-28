class Admin::SubCategoryController < ApplicationController
  layout 'layouts/admin'

  def index
    @categoy = Category.all.pluck(:id)
    @sub_categories =  SubCategory.where(category_id: @categoy)
   
  end

  def new
    @sub_category = SubCategory.new
  end 

  def create
     @sub_category = SubCategory.create!(sub_title:params[:sub_title],category_id:params[:category_id])
   
      redirect_to admin_sub_category_index_path
  
     
  end

  def edit 
  end 

  def update 
  end 


  private

  def subparams
    params.permit(:sub_title , :category_id)
  end 
end
