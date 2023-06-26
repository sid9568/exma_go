class Exam::PgController < ApplicationController
  def index
   @coures_pg =  Course.all
  end
end
