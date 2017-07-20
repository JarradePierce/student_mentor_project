class SessionsController < ApplicationController
  def new
  end

  def create
    @student = Student.find_by(student_params[:email])
    if @student && @student.authenticate(student_params[:password])
      session[:user_id] = @user.id
      redirect_to student_path(@student)
    else
      flash[:notice] = "Login Failed"
      render 'new'
    end
  end

  def destroy
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.permit(:username, :password)
  end
end
