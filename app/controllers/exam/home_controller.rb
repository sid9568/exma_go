class Exam::HomeController < ApplicationController
  def index
      @category = Category.all
      @sub_category = SubCategory.where(category_id: @category)
      p @sub_category 
    p @category
  end
end
