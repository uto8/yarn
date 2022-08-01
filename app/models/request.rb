class Request < ApplicationRecord
  belongs_to :user
  belongs_to :event
  
  has_many :request_users, dependent: :destroy
  has_many :users, through: :request_users
  accepts_nested_attributes_for :request_users, allow_destroy: true
  validates_associated :users
end
