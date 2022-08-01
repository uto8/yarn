# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  [
    {
      name:"めんま",
      email:"menma@gmail.com",
      password:"password",
      gender:"man",
      birthday:"2000-09-01"
    },
    {
      name:"ゆうと",
      email:"yuto@gmail.com",
      password:"password",
      gender:"man",
      birthday:"2000-08-26"
    },
    {
      name:"女",
      email:"onnna@gmail.com",
      password:"password",
      gender:"woman",
      birthday:"2000-09-01"
    },
    {
      name:"めんま2",
      email:"menma2@gmail.com",
      password:"password",
      gender:"man",
      birthday:"2000-09-01"
    },
    {
      name:"めんま3",
      email:"menma3@gmail.com",
      password:"password",
      gender:"man",
      birthday:"2000-09-01"
    },
    {
      name:"めんま4",
      email:"menma4@gmail.com",
      password:"password",
      gender:"man",
      birthday:"2000-09-01"
    },
    {
      name:"めんま5",
      email:"menma5@gmail.com",
      password:"password",
      gender:"man",
      birthday:"2000-09-01"
    },
    {
      name:"ゆうと2",
      email:"yuto2@gmail.com",
      password:"password",
      gender:"man",
      birthday:"2000-09-01"
    },
    {
      name:"ゆうと3",
      email:"yuto3@gmail.com",
      password:"password",
      gender:"man",
      birthday:"2000-09-01"
    },
    {
      name:"ゆうと4",
      email:"yuto4@gmail.com",
      password:"password",
      gender:"man",
      birthday:"2000-09-01"
    },
    {
      name:"ゆうと5",
      email:"yuto5@gmail.com",
      password:"password",
      gender:"man",
      birthday:"2000-09-01"
    }
  ]
)
Relationship.create!(
  [
    {
      follower_id: 1,
      following_id: 4
    },
    {
      follower_id: 1,
      following_id: 5
    },
    {
      follower_id: 1,
      following_id: 6
    },
    {
      follower_id: 1,
      following_id: 7
    },
    {
      follower_id: 2,
      following_id: 8
    },
    {
      follower_id: 2,
      following_id: 9
    },
    {
      follower_id: 2,
      following_id: 10
    },
    {
      follower_id: 2,
      following_id: 11
    },
    # {
    #   follower_id: 4,
    #   following_id: 1
    # },
    # {
    #   follower_id: 5,
    #   following_id: 1
    # },
    # {
    #   follower_id: 6,
    #   following_id: 1
    # },
    # {
    #   follower_id: 7,
    #   following_id: 1
    # },
    {
      follower_id: 8,
      following_id: 2
    },
    {
      follower_id: 9,
      following_id: 2
    },
    {
      follower_id: 10,
      following_id: 2
    },
    {
      follower_id: 11,
      following_id: 2
    }
])
