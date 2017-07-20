class HomeController < ApplicationController
  include SessionsHelper

  def index
    if student_current_user
      redirect_to student_current_user
    elsif mentor_current_user
      mentor_current_user
    else
      render :index
    end
  end
end
