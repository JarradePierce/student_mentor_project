class SessionsController < ApplicationController
  include SessionsHelper
  def create
    if params[:user] == 'student'
      @student = Student.find_by(username: user_params[:username])
      if @student && @student.authenticate(params[:session][:password])
        session[:user_id] = @student.id
        redirect_to student_path(student_current_user)

      else
        p @student
        flash[:notice] = "Login Failed"
        redirect_to students_login_path
      end
    else
      @mentor = Mentor.find_by(username: user_params[:username])
      if @mentor && @mentor.authenticate(params[:session][:password])
        session[:user_id] = @mentor.id
        redirect_to mentor_path(mentor_current_user)
      else
        p @mentor
        flash[:notice] = "Login Failed"
        redirect_to mentors_login_path
      end

    end
  end

    def destroy
      session[:user_id] = nil
      redirect_to root_path
    end

    private
    def set_student
      @student = Student.find(params[:id])
    end

    def user_params
      params.require(:session).permit(:username, :password, :user)
    end
  end
