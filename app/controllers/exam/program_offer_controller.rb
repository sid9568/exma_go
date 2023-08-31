class Exam::ProgramOfferController < ApplicationController

  def index
    @cat = params[:subcategory]
    @aa =  ProgramOffer.where(sub_category_id: @cat).where("(id LIKE (?) or title LIKE (?))","%#{params[:keyword]}%" ,"%#{params[:keyword]}%")
  end
end
