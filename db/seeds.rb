# createで登録
Item.create(
  name: "エアマックス 95",
  description: "1995年のランニングマックスモデルの復刻版。時代を席巻した名モデルAIR MAX95。当時は
    斬新でハイテクなルックスがストリートのファッションシーンを席巻しました。",
  price: 25000,
  seller: "Taro",
  email: "kazuma@takahashi.org",
  image_url: "http://news.digitallab.biz/wordpress/wp-content/uploads/Nike-Air-Max-95-Neon.jpg")

# createで登録
Item.create(
  name: "フットスケープ",
  description: "横にシューレースがある斬新なモデル。大切にしていただける方にお譲りします。",
  price: 18000,
  seller: "Jiro",
  email: "foo@example.com",
  image_url: "https://smlycdn.akamaized.net/data/product2/2/e4e8cc92ab955a67a2d3aeb98eb5541475fd7ca3_l.jpg"
)

# new & saveで登録
item3 = Item.new(
  name: "ポンプフューリー",
  description: "ポンプを押すと、空気によってパイプが膨らみ足型にフィットします。",
  price: 18000,
  seller: "Teru",
  email: "foo@example.com",
  image_url: "http://image.rakuten.co.jp/atmos-girls/cabinet/reebok/v47514-1.jpg"
)
item3.save