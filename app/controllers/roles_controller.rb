class RolesController < ApplicationController
  def index
    @roles =Role.all
  end

  def show
    @role = Role.find(params[:id])


  require "unirest"
  require 'active_support/core_ext/hash'
  response = Unirest.get "https://services.onetcenter.org/ws/online/occupations/#{@role.code}/summary/detailed_work_activities", auth:{:user=>"class_assignment", :password=>"2723yhp"}
  # response = Unirest.get "https://services.onetcenter.org/ws/online/occupations/17-2051.00/details/detailed_work_activities", auth:{:user=>"class_assignment", :password=>"2723yhp"}

  #
  response.inspect
  parsed_response = Hash.from_xml(response.body.gsub("\n", ""))

  @activities=parsed_response["detailed_work_activities"]["activity"]
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new
    @role.title = params[:title]
    @role.code = params[:code]

    if @role.save
      redirect_to "/roles", :notice => "Role created successfully."
    else
      render 'new'
    end
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])

    @role.title = params[:title]
    @role.code = params[:code]

    if @role.save
      redirect_to "/roles", :notice => "Role updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @role = Role.find(params[:id])

    @role.destroy

    redirect_to "/roles", :notice => "Role deleted."
  end
end
