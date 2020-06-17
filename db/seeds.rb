# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

User.create!([
             {name: "First User", username: "user_first", email: "aaa@gmail.com", password_digest: "123456"},
             {name: "Second User", username: "second_first", email: "aaa@gmail.com", password_digest: "123456"},
             {name: "Third User", username: "user_third", email: "aaa@gmail.com", password_digest: "123456"},
             {name: "Fourth User", username: "user_fourth", email: "abc@gmail.com", password_digest: "123456"}
             ])

Blog.create!([
  {title: "First Blog Title", description: "First Blog Description", user_id: 3},
  {title: "Second Blog Title", description: "Second Blog Description", user_id: 2},
  {title: "Third Blog Title", description: "Third Blog Description", user_id: 1},
  {title: "Fourth Blog Title", description: "Fourth Blog Description", user_id: 2},
  {title: "Fifth Blog Title", description: "Fifth Blog Desc", user_id: 1},
  {title: "Sixth Blog Title", description: "Sixth Blog Desc", user_id: 4},
  {title: "Title Submitted Via Seed", description: "Description Submitted Via Seed", user_id: 2},
])

# Blog.find_or_create_by!(title: 'Title Submitted Via Seed (find_or_create_by)', description: 'Description Submitted Via Seed')
# CORRECT ONE - Below
Blog.find_or_create_by!(title: 'Title Submitted Via Seed (find_or_create_by)', description: 'Description Submitted Via Seed', user_id: '2')
# Blog.create!(title: 'Title Submitted Via Seed', description: 'Description Submitted Via Seed', user_id: '2')

UserDetail.create!([
  {user_id: 1, address: "Address User-1 Submitted Via Seed", phone: nil, gender: "Male"},
  {user_id: 2, address: "Address User-2 Submitted Via Seed", phone: nil, gender: "Female"},
  {user_id: 3, address: "Address User-3 Submitted Via Seed", phone: nil, gender: "Male"}
])
Article.create!([
  {title: "First Article Title", description: "First Article Desc.", status: 1, user_id: nil}
])
