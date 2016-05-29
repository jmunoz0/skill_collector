class Role < ActiveRecord::Base

  def self.set_skills
    roles=Role.all
    roles.each do |role|
      require "unirest"
      require 'active_support/core_ext/hash'
      response = Unirest.get "https://services.onetcenter.org/ws/online/occupations/#{role.code}/summary/detailed_work_activities", auth:{:user=>"class_assignment", :password=>"2723yhp"}
      # response = Unirest.get "https://services.onetcenter.org/ws/online/occupations/17-2051.00/details/detailed_work_activities", auth:{:user=>"class_assignment", :password=>"2723yhp"}

      # #
      response.inspect
      parsed_response = Hash.from_xml(response.body.gsub("\n", ""))
      # raise parsed_response.inspect
      if parsed_response["detailed_work_activities"].present?
        skills=parsed_response["detailed_work_activities"]["activity"]
        skills.each do |i|
          skill=Skill.new
          skill.name=i

          skill.save
          task=Task.new
          task.role_id=role.id
          task.skill_id=skill.id
          task.save
          puts task.inspect
        end
      else
        puts "BAD ROLE: #{role.code}"
      end
    end
  end

  has_many(:tasks, :class_name=>"Task", :foreign_key=>"role_id")


end
