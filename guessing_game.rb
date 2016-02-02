def get_user_input
  print "What do you think the integer is? "
  return gets.chomp
end

def higher_or_lower?(computer_number, user_input)
  
end

user_input = []
computer_number = rand(1..100)
puts computer_number
puts "I'm thinking of an integer between 1 and 100."

(1..5).each do |number|
  user_input << get_user_input
  if user_input[number - 1].to_i == computer_number
    puts "That's it! You got it, my number was: #{computer_number}"
    break
  end
  if number == 5
    puts "I'm sorry you were not able to guess my number"
  end

  higher_or_lower?(computer_number, user_input)

end
