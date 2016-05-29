require "unirest"
require 'active_support/core_ext/hash'
# response = Unirest.get "https://services.onetcenter.org/ws/online/occupations/17-2051.00/summary/detailed_work_activities",  auth:{:user=>"class_assignment", :password=>"2723yhp"}
# # response = Unirest.get "https://services.onetcenter.org/ws/online/occupations/17-2051.00/details/detailed_work_activities", auth:{:user=>"class_assignment", :password=>"2723yhp"}
#
# #
# # # puts response.inspect
# parsed_response = Hash.from_xml(response.body.gsub("\n", ""))
#
# skills=parsed_response["detailed_work_activities"]["activity"]
# skills.each do |i|
#   puts skill=i
#
#   end
#  parsed_response["detailed_work_activities"].keys
# puts skills.class
response = Unirest.get "https://services.onetcenter.org/ws/online/occupations/?start=1&end=1110", auth:{:user=>"class_assignment", :password=>"2723yhp"}
parsed_response = Hash.from_xml(response.body.gsub("\n", ""))
# # #
# # # # puts parsed_response.keys
# # # # puts parsed_response.class
parsed_response["occupations"]
puts occupations=parsed_response["occupations"]["occupation"]
occupations.each do |i|
puts code=i["code"]

puts title=i["title"]
#
end





# occupations=parsed_response["occupations"]["occupation"]
# occupations.each do |i|
# puts role=parsed_response["occupations"]["occupation"]i
# end




# puts occupations
# puts occupations.keys
# puts occupations.class
# puts occupations.length
