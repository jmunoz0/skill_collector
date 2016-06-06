class Task < ActiveRecord::Base

belongs_to(:role, :class_name=>"Role", :foreign_key=>"role_id")

belongs_to(:skill, :class_name=>"Skill", :foreign_key=>"skill_id")

validates :role_id, :presence=>true
validates :skill_id, :presence=>true
end
