class Usergroup < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  validates :admin_user,
      presence: true

end
