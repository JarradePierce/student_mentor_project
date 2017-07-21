class StudentsController < ApplicationController
  include SessionsHelper

  def create
   @student = Student.new(student_params)
   if @student.save
    session[:user_id] = @student.id
    redirect_to student_path(@student), notice: 'Account successfully created.'
  else
    render :new
  end
end

def show
  set_student
  @availabilities = Availability.where("start_time >= :present",
    {present: DateTime.now}).sort_by {|avail| avail.start_time}

  @appointments = Appointment.all.where(student: student_current_user).sort_by {|app| app.availabilities.first.start_time}

  @appointment = Appointment.new
end

def login 
end

def new
  @student = Student.new
end


private
def set_student
  @student = Student.find(params[:id])
end

def student_params
  params.require(:student).permit(:username, :email, :password, :phase)
end
end
