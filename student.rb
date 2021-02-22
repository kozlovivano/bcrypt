require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name 
    @last_name = last_name 
    @username = username 
    @email = email 
    @password = password 
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name ? @last_name : "Undefined"}. Email: #{@email}, Username: #{@username}"
  end

end

toshimasa = Student.new("Toshimasa", "Yasunori", "toshya", "toshya@gmail.com", "password")
kate = Student.new("Kate", "Lina", "kate", "kate@gmail.com", "password2")

hashed_password = toshimasa.create_hash_digest(toshimasa.password)

puts hashed_password