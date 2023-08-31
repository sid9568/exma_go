class Exam::HomeController < ApplicationController
  def index
    @category = Category.all
    @sub_category = SubCategory.where(category_id: @category)
   @program =  ProgramOffer.all.where("(id LIKE (?) or title LIKE (?))","%#{params[:keyword]}%" ,"%#{params[:keyword]}%")
   p "================pro"
   p @program
    p @sub_category 
    p @category

  end

  def create
    @program = ProgramOffer.create!(title:params[:title],color:params[:color],sub_category_id:params[:sub_category_id])
    redirect_to admin_program_offer_index_path
  end
end
