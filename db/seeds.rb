# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Customer.create(nickname: 'test',email: 'test@test',password: "111111")
 Customer.create(nickname: 'test2',email: 'test2@test2',password: "111111")
 Customer.create(nickname: 'test3',email: 'test3@test3',password: "111111")
 Customer.create(nickname: 'test4',email: 'test4@test4',password: "111111")
 Customer.create(nickname: 'test5',email: 'test5@test5',password: "111111")
 Customer.create(nickname: 'test6',email: 'test6@test6',password: "111111")
 Shop.create(email: 'test@test', password: "111111", name: "test",address: "東京都渋谷区渋谷2-21-13",introduction: "test",opening_hours: "12時〜19時",link: "https://aws.amazon.com/jp/",longitude: "139.70159288219782",latitude: "35.65817335678897")
 Shop.create(email: 'test2@test2', password: "111111", name: "test2",address: "東京都渋谷区道玄坂2-29-1",introduction: "test2",opening_hours: "13時〜19時",link: "https://aws.amazon.com/jp/",longitude: "139.69873872637274",latitude: "35.6597252712032")
 Shop.create(email: 'test3@test3', password: "111111", name: "test3",address: "東京都渋谷区渋谷2-21-1",introduction: "test3",opening_hours: "14時〜19時",link: "https://aws.amazon.com/jp/",longitude: "139.70372766440903",latitude: "35.65940267279003") 
 Shop.create(email: 'test4@test4', password: "111111", name: "test4",address: "東京都渋谷区宇田川町15-1",introduction: "test4",opening_hours: "15時〜19時",link: "https://aws.amazon.com/jp/",longitude: "139.69863776787403",latitude: "35.662802305303")
 Shop.create(email: 'test5@test5', password: "111111", name: "test5",address: "東京都豊島区南池袋1",introduction: "test5",opening_hours: "16時〜19時",link: "https://aws.amazon.com/jp/",longitude: "139.71090009753954",latitude: "35.72970309811198")
 Shop.create(email: 'test6@test6', password: "111111", name: "test6",address: "東京都豊島区東池袋1-14-1",introduction: "test6",opening_hours: "17時〜19時",link: "https://aws.amazon.com/jp/",longitude: "139.71513698313245",latitude: "35.73018459514924")
 Admin.create(email: 'admin@admin', password: "111111")