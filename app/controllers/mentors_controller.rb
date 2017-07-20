class MentorsController < ApplicationController
  def show
    @mentor = Mentor.find_by(id: params[:id])
  end

end
