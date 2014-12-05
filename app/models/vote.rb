class Vote < ActiveRecord::Base
  belongs_to :group
  has_many :choices

  validates :group_id,
      presence: true

  validates :vote_type,
      presence: true

  validates :expiration_time,
      presence: true

  validates :expiration_time_number,
      presence: true,
      numericality: true

  
end
