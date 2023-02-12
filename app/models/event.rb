class Event < ApplicationRecord
  belongs_to :user
  has_many :requests
  belongs_to :participant, class_name: 'User', optional: true

  # has_many :event_users, dependent: :destroy
  # has_many :users, through: :event_users
  # accepts_nested_attributes_for :event_users, allow_destroy: true
  # validates_associated :users

  enum address: { ebisu: 0, shibuya: 1, roppongi: 3, meieki: 4, sakae: 5 }

  validates :address, presence: true

  has_one_attached :image

  has_one :event, dependent: :destroy

  def requested?(user)
    requests.include?(user)
  end
end
