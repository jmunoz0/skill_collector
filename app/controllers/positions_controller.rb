class PositionsController < ApplicationController


  def index
    positions = Position.all
    @roles=Role.all
  end

  def show
    @position = Position.find(params[:id])
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new
    @position.user_id = params[:user_id]
    @position.role_id = params[:role_id]
    @position.name = params[:name]

    if @position.save
      redirect_to "/positions", :notice => "Position created successfully."
    else
      render 'new'
    end

  end

  def edit
    @position = Position.find(params[:id])
  end



  def update
    @position = Position.find(params[:id])

    @position.user_id = params[:user_id]
    @position.role_id = params[:role_id]
    @position.name = params[:name]

    if @position.save
      redirect_to "/positions", :notice => "Position updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @position = Position.find(params[:id])

    @position.destroy

    redirect_to "/positions", :notice => "Position deleted."
  end

  def all_skills
    @positions=Position.where(:user_id=>current_user.id)
    @positions=current_user.positions

  end

  def role_interest
  @position = Position.new
  end

  def compare_skill
    @position = Position.new
    @position.user_id = params[:user_id]
    @position.role_id = params[:role_id]
    @position.name = params[:name]


    redirect_to "/role_interest"
  end


end
