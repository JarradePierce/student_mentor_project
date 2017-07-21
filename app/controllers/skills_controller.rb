class SkillsController < ApplicationController
  def new
    @mentor = Mentor.find_by(id: params[:mentor_id])
    @skill = @mentor.skills.build
  end

  def create
    @skill = Skill.new(skill_params)
    @mentor = Mentor.find_by(id: params[:mentor][:mentor_id])
    if @skill.save
      @mentor.skills.push(@skill)
      redirect_to @mentor
    else
      render "new"
    end
  end


  private

  def skill_params
    params.require(:skill).permit(:name)
  end


end