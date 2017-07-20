class AvailabilitiesController < ApplicationController
	def new
		mentor = Mentor.find(params[:mentor_id])
		@availability = mentor.availabilities.build
	end

	def create
		@availability = Availability.new(availability_params)
    @availability.mentor_id = params[:mentor][:id]
		if @availability.save
			redirect_to @availability.mentor
		else
			render "new"
		end
	end

  private
  def availability_params
    params.require(:availability).permit(:start_time, :mentor_id)
  end

end
