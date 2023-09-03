class Exam::ProgramOfferController < ApplicationController

  def index
    @cat = params[:subcategory]
    p "============="
    p @cat
    @aa =  ProgramOffer.where(sub_category_id: @cat).where("(id LIKE (?) or title LIKE (?))","%#{params[:keyword]}%" ,"%#{params[:keyword]}%")
  end
end
