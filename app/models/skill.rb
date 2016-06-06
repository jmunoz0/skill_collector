class Skill < ActiveRecord::Base
  has_many(:tasks, :class_name=>"Task", :foreign_key=>"skill_id")

  validates :name, :presence=>true
  validates :id, :presence=>true
end
