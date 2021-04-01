# メニュー一覧
menus = [
  { id: 1, name: 'メニュー1', price: 3900, service_time: 30, off_group: 1},
  { id: 2, name: 'メニュー2', price: 4500, service_time: 45, off_group: 1 },
  { id: 3, name: 'メニュー3', price: 1500, service_time: 15, off_group: 0 },
  { id: 4, name: 'メニュー4', price: 5800, service_time: 60, off_group: 2 }
]

# オフグループ-1
off_1 = [
  { id: 1, name: 'なし', price: 0, service_time: 0},
  { id: 2, name: 'オフ剤', price: 1500, service_time: 15},
  { id: 3, name: 'ツイオフ', price: 500, service_time: 5}
]

# オフグループ-2
off_2 = [
  { id: 1, name: 'なし', price: 0, service_time: 0},
  { id: 2, name: 'ハンド', price: 3000, service_time: 30},
  { id: 3, name: 'フット', price: 3000, service_time: 30}
]

# 単一メニューの予約の場合（メニューID:1, オフグループ1 ID:2）
reservations = [menus[0], off_1[1]]

# 単一メニューの料金（メニューID:1, オフグループ1 ID:2）
price = 0
reservations.each do |menu|
  price += menu[:price]
end
p price

# 単一メニューの施術時間（メニューID:1, オフグループ1 ID:2）
service_time = 0
reservations.each do |menu|
  service_time += menu[:service_time]
end
p service_time

# どっちのオフなのかわかるように親子関係を持たせる
# 複数メニューの場合（メニューID:1 => オフグループ1 ID:3, メニューID:4 => オフグループ2 ID:2）
reservations = [
  { menu: menus[0], off: off_1[2] },
  { menu: menus[3], off: off_2[1] }
]

# 複数メニューの料金（メニューID:1 => オフグループ1 ID:3, メニューID:4 => オフグループ2 ID:2）
price = 0
reservations.each do |menus|
  price += menus[:menu][:price]
  price += menus[:off][:price]
end
p price

# 複数メニューの施術時間（メニューID:1 => オフグループ1 ID:3, メニューID:4 => オフグループ2 ID:2）
service_time = 0
reservations.each do |menus|
  service_time += menus[:menu][:service_time]
  service_time += menus[:off][:service_time]
end
p service_time
