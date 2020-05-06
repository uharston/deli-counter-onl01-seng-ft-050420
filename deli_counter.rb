katz_deli = []

def line(array)
  current_line = []
  if array.size > 0
    array.each.with_index(1) do |customer, index|
      current_line << "#{index}. #{customer}"
    end
    puts "The line is currently: " + current_line.join(" ")
  else
    puts  "The line is currently empty."
  end
end

def take_a_number(array, name)
  array << name #add new name to the end of the array(back of the deli line)
  puts "Welcome, #{array[-1]}. You are number #{array.length} in line."
end

def now_serving(array)
  if array.length > 0
  puts "Currently serving #{array.shift}."
else
  puts "There is nobody waiting to be served!"
end
end
