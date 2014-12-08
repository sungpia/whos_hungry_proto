class Choice < ActiveRecord::Base
  belongs_to :vote

  validates :vote_id,
      presence: true

  validates :restaurant_id,
      presence: true

  validates :restaurant_name,
      presence: true

  validates :restaurant_picture,
      presence: true

  validates :restaurant_location_x,
      presence: true,
      numericality: true

  validates :restaurant_location_y,
      presence: true,
      numericality: true

  validates :count,
      numericality: true

end
