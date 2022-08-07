class Event < ApplicationRecord
  belongs_to :user
  has_many :requests
  belongs_to :participant, class_name: 'User', optional: true
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  has_many :event_users, dependent: :destroy
  has_many :users, through: :event_users
  accepts_nested_attributes_for :event_users, allow_destroy: true
  validates_associated :users

  validates :title, presence: true
  validates :address, presence: true

  has_one :event, dependent: :destroy

  def requested?(user)
    requests.include?(user)
  end
end
