# my_info = {username: "sandro", pass: "123456"}
# def authenticator(dictionary)
#   print 'Please, enter the username:'
#   user_name = gets
#   print 'Please, enter the password:'
#   password = gets
#   puts '----------------'
#
#   # puts my_info[:username] == user_name
#   # puts my_info[:username] , user_name
#
#   if dictionary['username'] == user_name && dictionary['pass'] == password
#     print dictionary
#   else
#     print 'Credentials were not correct'
#   end
# end
# authenticator(my_info)



dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  puts somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# # Execution flow
# loop do
#   puts 'Do you want to lookup an area code based on a city name? (Y/N)'
#   answer = gets.chomp.downcase
#   if answer != 'y'
#     break
#   end
#   puts "'Which city's area code are you interested in?"
#   get_city_names(dial_book)
#   puts 'Enter your Seleciton'
#   user_city = gets.chomp
#   if dial_book.include?(user_city)
#     puts get_area_code(dial_book,user_city) + ' <-- Here it is'
#   else
#     puts 'There is no city like this'
#   end
#
# end





class Student
  # attr_writer for rewriting last_name
  # attr_writer :last_name

  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name,last_name,email,username,password)
    @first_name=first_name
    @last_name=last_name
    @email=email
    @username=username
    @password=password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}"
  end

end

# sandro = Student.new('sandro','shavdatuashvili','sandro.shav@gmail.com','Yagai','123456')
# zuka = Student.new('zuka  ','vanishvili','zuka@gmail.com','kak','8888')
# puts sandro.first_name
# sandro.first_name = zuka.first_name
# puts sandro.first_name

def loading_text
  print 'Loading...'
  sleep(0.3)
  print '....'
  sleep(0.3)
  print '....'
  sleep(0.3)
  print '.'
  sleep(0.3)
  print '.'
  sleep(0.3)
  print '..'
  sleep(0.3)
  print '.'
  sleep(0.3)
  print '.'
  print '.'
  sleep(0.2)
  print '.'
  print '.'
  sleep(0.2)
  print '.'
  print '.'
  sleep(0.2)
  print '.'
  print '.'
  sleep(0.2)
  print '.'
  print '.'
  sleep(0.2)
  print '.'
  print '.'
  sleep(0.2)
  print '.'
end

