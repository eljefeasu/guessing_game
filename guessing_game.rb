def get_user_input
  print "What do you think the integer is? "
  return gets.chomp
end

computer_number = rand(1..100)
puts computer_number
puts "I'm thinking of an integer between 1 and 100."

5.times do
  user_input = get_user_input
  if user_input.to_i == computer_number
    puts "That's it! You got it, my number was: #{computer_number}"
    break
  end
end
