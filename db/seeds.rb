# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "unirest"
require 'active_support/core_ext/hash'
# response_1 = Unirest.get "https://services.onetcenter.org/ws/online/occupations/17-2051.00/summary/detailed_work_activities", auth:{:user=>"class_assignment", :password=>"2723yhp"}
# response = Unirest.get "https://services.onetcenter.org/ws/online/occupations/17-2051.00/details/detailed_work_activities", auth:{:user=>"class_assignment", :password=>"2723yhp"}

#
# response.inspect
# parsed_response_1 = Hash.from_xml(response_1.body.gsub("\n", ""))
#
# skills=parsed_response_1["detailed_work_activities"]["activity"]
# parsed_response["detailed_work_activities"].keys

response = Unirest.get "https://services.onetcenter.org/ws/online/occupations/?start=1&end=1110", auth:{:user=>"class_assignment", :password=>"2723yhp"}

parsed_response = Hash.from_xml(response.body.gsub("\n", ""))
occupations=parsed_response["occupations"]["occupation"]

occupations.each do |i|
role=Role.new
role.title=i["title"]
role.code=i["code"]
role.save
end


# skills.each do |i|
# skill=Skill.new
# skill.name=i
# skill.save
# end
