class AppointmentsController < ApplicationController
  def create
    @appointment = Appointment.create(appointment_params)
  end

  private 
  def appointment_params
    params.require(:appointment).permit(:student_id, :mentor_id, :topic_id)
  end
end
