Member.destroy_all
Game.destroy_all
News.destroy_all

Member.create!([
  { name: "田中", number: 1,  position: "P",  throws_bats: "右投右打", bio: "エース右腕。", avatar: "" },
  { name: "鈴木", number: 7,  position: "OF", throws_bats: "右投左打", bio: "俊足外野。", avatar: "" },
  { name: "佐藤", number: 10, position: "IF", throws_bats: "右投右打", bio: "内野の要。", avatar: "" }
])

Game.create!([
  { date: Date.today + 7, opponent: "大阪レッズ", place: "鶴見緑地", start_time: "09:00", score: nil, note: "" },
  { date: Date.today - 7, opponent: "城東ブルーズ", place: "城東スポーツセンター", start_time: "09:00", score: "5-3", note: "本塁打：田中" }
])

News.create!([
  { title: "メンバー募集（外野手）", body: "体験参加歓迎！", published_on: Date.today, image: "" },
  { title: "練習試合の結果", body: "5-3で勝利しました。", published_on: Date.today - 3, image: "" }
])
