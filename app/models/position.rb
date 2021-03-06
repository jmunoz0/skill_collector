class Position < ActiveRecord::Base

validates :role_id, :presence=>true, :uniqueness=>{:scope=>:user}
validates :user_id, :presence=>true

belongs_to :user
belongs_to :role
end
