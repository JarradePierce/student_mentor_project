class StudentsController < ApplicationController

  def index
  end

  def new
    @student = Student.new 
  end

  def create
     @student = Student.new(student_params)
     @student.save 

     redirect_to student_path(@student)
  end

  def show
    set_student
  end

  def delete
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:username, :email, :password, :phase)
    end
end
