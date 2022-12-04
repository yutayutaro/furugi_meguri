# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Shop.create(email: 'test@test', password: "111111", name: "test",address: "test",introduction: "test",opening_hours: "12時〜19時")
 Admin.create(email: 'test@test', password: "111111")