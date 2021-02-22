# require 'bcrypt'

# my_password = BCrypt::Password.create("my password")
# puts my_password

# other_password = BCrypt::Password.create("my password")
# puts other_password

# another_password = BCrypt::Password.create("my password")
# puts another_password

# my_password = BCrypt::Password.new("$2a$12$obKZak2Os7sGIrsmP7NSIOIOKmmHXt6513u.GdevRKkIRR0v4I/Pu")

# puts my_password

require 'bcrypt'

users = [
  { username: "laguna", password: "laguna.password.123" },
  { username: "alexey", password: "alexey.password.123" },
  { username: "toshimasa", password: "toshimasa.password.123" }
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verifiy_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

puts create_secure_users(users)
