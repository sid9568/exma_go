class Admin::ProgramOfferController < ApplicationController
    layout 'layouts/admin'

  def index
    @program = ProgramOffer.all
  end

  def new

  end 

  def create
    @program = ProgramOffer.create!(title:params[:title],color:params[:color],sub_category_id:params[:sub_category_id])
    redirect_to  admin_program_offer_index_path
  end

  def destroy
    @program = ProgramOffer.find_by_id(params[:id])
    @program.destroy
    redirect_to admin_program_offer_index_path
  end 


end
