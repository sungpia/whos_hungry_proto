class User < ActiveRecord::Base
  has_many :usergroups
  has_many :groups, through: :usergroups
  validates :facebook_id, presence: true, uniqueness: true
end
