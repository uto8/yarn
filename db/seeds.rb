# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create!(
  [
    {
      user_id:184,
      address:"東京駅",
      title:"飲める人募集",
      message:"使い方あまりわかりません"
    },
    {
      user_id:194,
      address:"新宿御苑前",
      title:"ごはんたべたい",
      message:"はじめて利用します。友達の追加方法がわからないので、2人で行きます。よろしくお願いします。"
    },
    {
      user_id:204,
      address:"新宿　ねぎし",
      title:"ランチいける方募集",
      message:"大学の友達といます。2人ずつだとうれしいです"
    },
    {
      user_id:214,
      address:"池袋",
      title:"池袋周辺でご飯できる方募集",
      message:"友達と3人で行く予定です。人数が多いほうがいいなと思います"
    },
    {
      user_id:224,
      address:"高田馬場",
      title:"早稲田大学生募集",
      message:"友達と2人でご飯行きます～"
    },
    {
      user_id:234,
      address:"高田馬場",
      title:"ごはんたべたい",
      message:"大学の友達と2人でご飯行きます。参加したい人大募集です。早稲田の方がいいです。"
    },
    {
      user_id:244,
      address:"品川",
      title:"仕事終わり希望",
      message:"後輩と2人で飲みに行きます。"
    },
    {
      user_id:254,
      address:"東京駅",
      title:"どこいくか決まってない",
      message:"アプリの使い方あまりわかってなくて、友達追加できなかった。2人でいくので2人以上募集です。"
    },
    {
      user_id:264,
      address:"歌舞伎町",
      title:"飲み足りない",
      message:"飲み足りないからのみゆこ"
    },
    {
      user_id:274,
      address:"新大久保",
      title:"サムギョプサル大好き",
      message:"2対2でご飯行ける方募集してます――"
    },
    {
      user_id:284,
      address:"下北沢",
      title:"おしゃれなカフェ行きたい",
      message:"2人以上希望です"
    }
  ]
)
