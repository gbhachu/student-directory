def input_students
   puts "Please enter the names of the students"
   puts "To finish, just hit return twice"
   # create an empty array
   students = [] # changed from hash to an array
   # get the first name
   name = gets.chomp # deleted space between gets and full stop
   # while the name is not empty, repeat this code
   while !name.empty? do #! missing
     # add the student hash to the array
     students << {name: name, cohort: :november} # double << needed to input to hash
     puts "Now we have #{students.count} students"
     # get another name from the user
     name = gets.chomp
   end
   # return the array of students
   students
 end

 def print_header
   puts "The students of my cohort at Makers Academy"
   puts "-------------"
 end

 def print(students)
   students.each do |student| #| | instead of //
     puts "#{student[:name]} (#{student[:cohort]} cohort)" #[] from {}
   end
 end

 def print_footer names
   puts "Overall, we have #{names.count} great students"
 end


 students = input_students
 print_header
 print students
 print_footer students

def print_footer names
  prints "Overall, we have {names.count} great students"
end


students = input_students
print_header
print{students}
print_footer[students]
