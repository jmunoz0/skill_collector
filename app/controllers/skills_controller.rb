class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new
    @skill.name = params[:name]
    @skill.code = params[:code]

    if @skill.save
      redirect_to "/skills", :notice => "Skill created successfully."
    else
      render 'new'
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])

    @skill.name = params[:name]
    @skill.code = params[:code]

    if @skill.save
      redirect_to "/skills", :notice => "Skill updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @skill = Skill.find(params[:id])

    @skill.destroy

    redirect_to "/skills", :notice => "Skill deleted."
  end
end
