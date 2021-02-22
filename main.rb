require_relative 'crud'

users = [
  { username: "laguna", password: "laguna.password.123" },
  { username: "alexey", password: "alexey.password.123" },
  { username: "toshimasa", password: "toshimasa.password.123" }
]

puts hashed_users = Crud.create_secure_users(users)