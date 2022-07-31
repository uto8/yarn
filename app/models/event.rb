class Event < ApplicationRecord
  belongs_to :user
  has_many :requests
  belongs_to :participant, class_name: 'User', optional: true
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def requested?(user)
    requests.include?(user)
  end
end
