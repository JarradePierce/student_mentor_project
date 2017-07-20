class SessionsController < ApplicationController


  def create
    @student = Student.where(student_params)
    if @student
      session[:user_id] = @user.id
      redirect_to student_path(@student)
    else
      redirect_to student_login_path
    end
  end


  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.permit(:username, :email, :password, :phase)
  end
end
