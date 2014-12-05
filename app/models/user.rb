class User < ActiveRecord::Base
  has_many :usergroups
  has_many :groups, through: :usergroups

  validates :facebook_id,
            presence: true,
            uniqueness: true

  validates :username,
      presence: true

  validates :os_type,
      presence: true,
      inclusion: { in: %w{IOS ANDROID} }

  validates :push_id,
      presence: true,
      uniqueness: true

  # validates :picture
  #
  # validates :location_x
  # validates :location_y


end
