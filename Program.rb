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
	elsif command == 'calculate'
	    # Get expression from user input
		puts 'Enter an arithmetic expression with no spaces (e.g. "x+y")'
		aExpression = gets.chomp
		# Split expression into terms and operand
		# This gets fancy... we will use a "Regular expression" to do the heavy lifting
		# This pattern will search and match the string for a number, followed by a arithmetic operator, followed by a final number
		aExpressionRegEx = /(\d+)([\+\-\*\/])(\d+)/
		# Capture the matches
		aExpressionMatches = aExpressionRegEx.match(aExpression)
		# Each string match (grouped by a set of () in the RegEx) is placed into an array
		# Array index 0 = original string
		# Array index 1..n = string matches
		
		# only run if we matched a valid expresion
		if (aExpressionMatches)
			termOne = aExpressionMatches[1]
			operator = aExpressionMatches[2]
			termTwo = aExpressionMatches[3]
			
			# What arithmetic operation do we need to perform?
			result = ''
			if operator == '+'
				result = termOne.to_i + termTwo.to_i
			elsif operator == '-'
				result = termOne.to_i - termTwo.to_i
			elsif operator == '*'
				result = termOne.to_i * termTwo.to_i
			elsif operator == '/'
				# This only supports integer division
				# How do we fix that?
				result = termOne.to_i / termTwo.to_i
			else
				puts 'Unknown operator: ' + operator
			end
			puts 'The value of ' + aExpressionMatches[0] + ' = ' + result.to_s
		else 
			puts 'Invalid expression!'
		end
		
	elsif command == 'exit'
		output= x=2
	elsif command == 'help'
		puts 'Enter One of these:'
		puts 'WhatsYourName'
		puts 'HowAreYou'
		puts 'WhatDayIsIt'
		puts 'WhatTimeIsIt'
		puts 'Calculate'
		puts 'Exit'
		puts 'You can also make them lowercase'
	else
		puts 'Not Valid, Use Help, I Beg You'
	end
	
end



