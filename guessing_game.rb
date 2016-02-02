def is_duplicate?(user_input, user_input_array)
  if user_input_array.include?(user_input)
    puts "I think you might need to go lie down. You entered that number already :P "
  end
end

def higher_or_lower?(computer_number, user_input_array)
  if user_input_array.last.to_i > computer_number.to_i
    puts "That is not the number. Your guess was too high."
  end
  if user_input_array.last.to_i < computer_number.to_i
    puts "That is not the number. Your guess was too low."
  end
end

counter = 5
user_input_array = []
rand_array=*(0..100)
rand_array.shuffle!
computer_number = rand_array[0]
puts computer_number
puts "I'm thinking of an integer between 1 and 100."

(1..5).each do |num|
  if counter > 1
    puts "You have #{counter} guesses left."
  else
    puts "You have 1 guess left."
  end
  print "What do you think the integer is? "
  user_input = gets.chomp
  is_duplicate?(user_input, user_input_array)
  user_input_array << user_input

  if user_input_array[num - 1].to_i == computer_number
    puts "That's it! You got it, my number was: #{computer_number}"
    break
  end

  higher_or_lower?(computer_number, user_input_array)
  counter -= 1

  if counter == 0
    puts "I'm sorry, but you were not able to guess my number. The number is #{computer_number}."
  end
end
