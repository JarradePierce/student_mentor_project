class MentorsController < ApplicationController
  def create
     @mentor = Mentor.new(mentor_params)
     if @mentor.save
      redirect_to mentor_path(@mentor), notice: 'Account successfully created.'
    else
      render :new
    end
  end

  def show
    set_mentor
  end
  
  def login 
  end

  def new
    @mentor = Mentor.new
  end


  private
    def set_mentor
      @mentor = Mentor.find_by(id: params[:id])
    end

    def mentor_params
      params.require(:mentor).permit(:username, :email, :password, :phase)
    end
end
