# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'kk1', password: 'kk1')
User.create(username: 'kk2', password: 'kk2')
User.create(username: 'kk3', password: 'kk3')
User.create(username: 'kk4', password: 'kk4')
User.create(username: 'kk5', password: 'kk5')
User.create(username: 'kk6', password: 'kk6')

Msg.create(body: 'kk2  kaza', user_id: 2)
Msg.create(body: 'kk4  kaza', user_id: 4)
Msg.create(body: 'kk1  kaza', user_id: 1)
