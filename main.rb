require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email adress: #{@email}"
  end

end

student1 = Student.new("Przemek", "Paciorek", "nx0dle", "polo@example,com", "polo123")

hashed_pass = student1.create_hash_digest(student1.password)