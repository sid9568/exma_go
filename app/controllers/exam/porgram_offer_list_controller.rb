class Exam::PorgramOfferListController < ApplicationController
  def index
    @cat = params[:id]
    p "=============="
    p @cat
    @program_offer_list =  ProgramOfferList.where(program_offer_id:  @cat)
  end
end
