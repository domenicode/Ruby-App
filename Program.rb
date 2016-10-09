x=1
puts 'use Help to see a list of commands'
while x == 1
command = gets.chomp.downcase
if command == 'whatsyourname'
puts 'My Name is Joe'
elsif command == 'howareyou'
puts '| |'
puts '_  _'
puts ' -- '
elsif command == 'whatdayisit'
puts 'Today is ' + Time.now.strftime("%A")
elsif command == 'whattimeisit'
puts 'It is ' + Time.now.strftime("%I : %M %p %Z")
elsif command == 'exit'
output= x=2
elsif command == 'help'
puts 'Enter One of these:'
puts 'WhatsYourName'
puts 'HowAreYou'
puts 'WhatDayIsIt'
puts 'WhatTimeIsIt'
puts 'Exit'
puts 'You can also make them lowercase'
else
puts 'Not Valid, Use Help, I Beg You'
end
end



