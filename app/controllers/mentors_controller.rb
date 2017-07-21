class MentorsController < ApplicationController
  include SessionsHelper
  def create
   @mentor = Mentor.new(mentor_params)
   if @mentor.save
    session[:user_id] = @mentor.id
    redirect_to mentor_path(@mentor), notice: 'Account successfully created.'
  else
    render :new
  end
end

def show
  set_mentor
  @availabilities = Availability.where("start_time >= :present",
    {present: DateTime.now}).sort_by {|avail| avail.start_time}

  @appointments = Appointment.all.where(mentor: mentor_current_user).sort_by {|app| app.availabilities.first.start_time}

  @past_appointments = @appointments.select do |app|
    app.availabilities.first.start_time < DateTime.now
  end

  @future_appointments = @appointments.select do |app|
    app.availabilities.first.start_time >= DateTime.now
  end

  @appointment = Appointment.new
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
