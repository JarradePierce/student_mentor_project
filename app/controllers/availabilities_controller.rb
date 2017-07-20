class AvailabilitiesController < ApplicationController
	def new
		mentor = Mentor.find(params[:mentor_id])
		@availability = mentor.availabilities.build
	end

	def create
		@availibility = Availability.new(availability_params)
		if @availibility.save
			redirect @availibility.mentor
		else
			render "new"
		end
	end

private
	def availability_params
		params.require(:availability).permit(:start_time, :mentor_id)
	end


end