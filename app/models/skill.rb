class Skill < ActiveRecord::Base
  has_many(:tasks, :class_name=>"Task", :foreign_key=>"skill_id")
end
