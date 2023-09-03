class Admin::PorgramController < ApplicationController
      layout 'layouts/admin'

  def index
    @program = Program.all
  end

  def new
  end

  def create
    @program = Program.create!(title:params[:title],sub_category_id:params[:sub_category_id])
  end 

  def destroy
  end 
end
