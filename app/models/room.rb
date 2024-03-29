class Room < ApplicationRecord
  has_many :entries, dependent: :destroy
  has_many :direct_messages, dependent: :destroy
  has_many :users, through: :entries

  belongs_to :event
end
