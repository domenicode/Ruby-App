x=1
puts 'use Help to see a list of commands'
while x == 1
command = gets.chomp
if command == 'WhatsYourName'
puts 'My Name is Joe'
elsif command == 'HowAreYou'
puts '| |'
puts '_  _'
puts ' -- '
elsif command == 'WhatDayIsIt'
puts 'Today is ' + Time.now.strftime("%A")
elsif command == 'WhatTimeIsIt'
puts 'It is ' + Time.now.strftime("%I : %M %p %Z")
elsif command == 'Exit'
output= x=2
elsif command == 'Help'
puts 'Enter One of these:'
puts 'WhatsYourName'
puts 'HowAreYou'
puts 'WhatDayIsIt'
puts 'WhatTimeIsIt'
puts 'Exit'
else
puts 'Not Valid, Use Help, I Beg You'
end
end



