katz_deli = [] #empty line

def line(array) #this method tell us who is in the line
  current_line = []
  if array.size > 0 #condition - if there are more than 0 customer in line put this
    #.each.with_index calls every element and index no. starting at the no. of your choice
    #  to be used as you wish within the 'do' 'end' scope.
    array.each.with_index(1) do |customer, index|
      current_line << "#{index}. #{customer}" #push each customer with their 'spot in line' into a new array
    end
    #convert the new array of customers with their 'spot in line' into a string and then append that list to the other string
    puts "The line is currently: " + current_line.join(" ")
  else #condition - if there are no customers put this string
    puts  "The line is currently empty."
  end
end

def take_a_number(array, name)
  array << name #add new name to the end of the array(back of the deli line)
  #array[-1] - the last person in line.
  #array.length - the length of the line which would be the last persons position
  puts "Welcome, #{array[-1]}. You are number #{array.length} in line."
end

def now_serving(array)
  if array.length > 0
  puts "Currently serving #{array.shift}." #array.shift removes that first element from the array and returns them in the puts string
else #condition - if nobody is in line puts this string
  puts "There is nobody waiting to be served!"
end
end
