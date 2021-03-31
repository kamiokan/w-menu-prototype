# メニュー一覧
menus = [
  { id: 1, name: 'メニュー1', price: 3900, service_time: 30 },
  { id: 2, name: 'メニュー2', price: 4500, service_time: 45 },
  { id: 3, name: 'メニュー3', price: 1500, service_time: 15 },
  { id: 4, name: 'メニュー4', price: 5800, service_time: 60 }
]

# 単一メニューの予約の場合（メニューID:1）
reservation = menus[0]

# 単一メニューの料金（メニューID:1）
price = reservation[:price]
p price

# 単一メニューの施術時間（メニューID:1）
service_time = reservation[:service_time]
p service_time

# 複数メニューの場合（メニューID:1,3）
reservations = [menus[0], menus[2]]

# 複数メニューの料金（メニューID:1,3）
price = 0
reservations.each do |menu|
  price += menu[:price]
end
p price

# 複数メニューの施術時間（メニューID:1,3）
service_time = 0
reservations.each do |menu|
  service_time += menu[:service_time]
end
p service_time

# 複数メニューの場合（メニューID:1,2,3,4）
reservations = menus

# 複数メニューの料金（メニューID:1,2,3,4）
price = 0
reservations.each do |menu|
  price += menu[:price]
end
p price

# 複数メニューの施術時間（メニューID:1,2,3,4）
service_time = 0
reservations.each do |menu|
  service_time += menu[:service_time]
end
p service_time
