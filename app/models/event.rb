class Event < ApplicationRecord
  belongs_to :user
  has_many :requests
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def requested?(user)
    requests.include?(user)
  end
end
