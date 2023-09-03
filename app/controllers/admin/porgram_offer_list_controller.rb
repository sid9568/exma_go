class Admin::PorgramOfferListController < ApplicationController
      layout 'layouts/admin'

  def index
   @program_offer_list =  ProgramOfferList.all
  end

  def new
  end

  def create
   @program_offer_list = ProgramOfferList.create!(title:params[:title],color:params[:color],program_offer_id:params[:program_offer_id])
   redirect_to admin_porgram_offer_list_index_path
  end
end
