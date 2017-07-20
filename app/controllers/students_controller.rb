class StudentsController < ApplicationController
  def create
     @student = Student.new(student_params)
     if @student.save
      redirect_to student_path(@student), notice: 'Account successfully created.'
    else
      render :new
    end
  end

  def show
    set_student
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
