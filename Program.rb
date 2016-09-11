x=1
while x == 1
puts 'Enter One of these:'
puts 'WhatsYourName'
puts 'HowAreYou'
puts 'WhatDayIsIt'
command = gets.chomp
if command == 'WhatsYourName'
puts 'My Name is Joe'
elsif command == 'HowAreYou'
puts '| |'
puts '_  _'
puts ' -- '
elsif command == 'WhatDayIsIt'
puts 'Today is ' + Time.now.strftime("%A")
end
end



