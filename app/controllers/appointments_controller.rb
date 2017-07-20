class AppointmentsController < ApplicationController
  include SessionsHelper
  def create
    @availability = Availability.find(availability_params[:availability_id])

    @appointment = Appointment.create(appointment_params)

    @availability.appointment_id = @appointment.id
    @availability.save

    redirect_to student_path(student_current_user)
  end

  private 
  def appointment_params
    params.require(:appointment).permit(:student_id, :mentor_id, :topic_id)
  end

  def availability_params
    params.require(:appointment).permit(:availability_id)
  end
end
