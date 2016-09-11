x=1
while x == 1
puts 'Enter One of these:'
puts 'WhatsYourName'
puts 'HowAreYou'
puts 'WhatDayIsIt'
puts 'WhatTimeIsIt'
puts 'AreYouSingle'
puts 'WillYouMarryMe'
puts 'DoYouWantToGetMarriedSomeday'
command = gets.chomp
if command == 'WhatsYourName'
puts 'My Name is Jo (Josephine)'
elsif command == 'HowAreYou'
puts '| |'
puts '_  _'
puts ' -- '
elsif command == 'WhatDayIsIt'
puts 'Today is ' + Time.now.strftime("%A")
elsif command == 'WhatTimeIsIt'
puts 'It is ' + Time.now.strftime("%I : %M %p %Z")
elsif command == 'AreYouSingle'
puts 'Yes'
elsif command == 'WillYouMarryMe'
puts 'Yes'
elsif command == 'DoYouWantToGetMarriedSomeday'
puts 'I do, and it'd be nice to settle down' 
end
end



