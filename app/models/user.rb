class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_acceptance_of :agreement, allow_nil: false, on: :create

  validates :name, presence: true
  validates :birthday, presence: true

  enum gender: { man: 0, woman: 1 }
  enum address: { kantou: 0, toukai: 1 }

  has_one_attached :image

  has_many :requests

  has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
  has_many :followings, through: :following_relationships

  has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :follower_relationships

  has_many :event_users
  has_many :events, through: :event_users

  has_many :request_users
  has_many :requests, through: :request_users

  has_many :entries
  has_many :direct_messages
  has_many :rooms, through: :entries

  def following?(other_user)
    following_relationships.find_by(following_id: other_user.id)
  end

  def follow!(other_user)
    following_relationships.create!(following_id: other_user.id)
  end

  def unfollow!(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end
end
