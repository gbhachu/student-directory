
# let's put all students into an array
students = []



months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ]

def print(students)
   students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)".center(60)
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(60)
end

def input_students

   students = []

   months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ]

  puts "Press 'any key' then enter to input student details or 'Enter' to exit"

  name = gets.chomp

  while !name.empty? do
   puts "Please enter name: "
   name = gets.chomp.capitalize

   # Checks if cohort is correct
    cohort_month = false
  while  cohort_month == false
   puts "Please enter cohort: "
   cohort = gets.chomp.capitalize
     if !months.include? cohort
       puts "Invalid entry please re-enter cohort"
     else
       cohort_month = true
    end
  end

   puts "Please enter hobbies: "
   hobbies = gets.chomp.capitalize
   puts "\nPlease enter country of birth: "
   country_of_birth = gets.chomp.capitalize
   puts "\nPlease enter height in inches: "
   height = gets.chomp.capitalize

   #add the student to the array
   students << {name: name, cohort: cohort, hobbies: hobbies, country_of_birth: country_of_birth, heighth: height}
     puts "Now we have #{students.count} students".center(60)
     puts "Press 'any key' and 'Enter' to add another student or 'Enter' to exit".center(60)
   name = gets.chomp
   end
     students

 end

 def print(students)

   # while loop to return student names
   count = students.count
   while count > 0 do
   students.each.with_index(1) do |student, index|
    puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)".center(60)
   count -= 1
   end
   end
 end
# print header to screen
 def print_header
   puts "The students of Villians Academy".center(60)
   puts "______________".center(60)
 end
# print number of students to screen
 def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(60)
 end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
