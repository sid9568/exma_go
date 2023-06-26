class Exam::UgController < ApplicationController
  def index
    @coures_ug =  Course.all
  end
end
