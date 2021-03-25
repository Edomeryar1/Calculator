def get_int_values
  #defining our method (def) and giving it a name (get_int_values)
  [gets, gets].map{ |s| s.chomp.to_i }
  #create an array for the 2 numbers we ask the users to enter
  #the block of this map{} converts user input into integers
end
index = 1
#creating a variable named index with an integer value = 1
while index <= 5
  #while loop will run code below if index is less than or equal to
  #five
puts "Would you like to add, subtract, multiply, or divide?"
response = gets.chomp
#asking the user what operator they want to use
case response.downcase
  #lowercases user input
when 'add'
  #when user enters add the code below will execute
  puts "Which numbers would you like to add?"
  op = :+

when 'subtract'
  #when user enters subtract, the code below will execute
  puts "Which numbers would you like to subtract?"
  op = :-

when 'multiply'
  #when user enters multiply, the code below will execute
  puts "Which numbers would you like to multiply?"
  op = :*

when 'divide'
  #when user enters divide, the code below will execute
  puts "Which numbers would you like to divide?"
  op = :/

else
  puts "Invalid input"

end

answer = get_int_values.inject(op)
#inject method will use whatever operator based on the true case above to add,
#multiply, subtract, or divide the 2 numbers entered by the user
puts "The answer is... #{ answer }"
#Answer is printed out
index += 1
#add one to the index and the loop will go back to the top to see if index <= 5
#if not, it will run the code again
end
