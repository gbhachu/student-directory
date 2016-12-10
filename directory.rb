
# let's put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
# and then print them
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)

   # 3. returns student's name if less than 12 characs
   students.select! { |student| student[:name].length < 12}

   students.each.with_index(1) do |student, index|
     puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
   end
 end

def print(students)
   students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students

   students = []

  puts "Press 'any key' then enter to input student details or 'Enter' to exit"

  name = gets.chomp

  while !name.empty? do
   puts "Please enter name: "
   name = gets.chomp.capitalize
   puts "Please enter cohort: "
   cohort = gets.chomp.capitalize
   puts "Please enter hobbies: "
   hobbies = gets.chomp.capitalize
   puts "\nPlease enter country of birth: "
   country_of_birth = gets.chomp.capitalize
   puts "\nPlease enter height in inches: "
   height = gets.chomp.capitalize

   #add the student to the array
   students << {name: name, cohort: cohort, hobbies: hobbies, country_of_birth: country_of_birth, heighth: height}
     puts "Now we have #{students.count} students"
     puts "Press 'any key' and 'Enter' to add another student or 'Enter' to exit"
   name = gets.chomp
   end
     students

 end

 def print(students)

   # while loop to return student names
   count = students.count
   while count > 0 do
   students.each.with_index(1) do |student, index|
    puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)"
   count -= 1
   end
   end
 end

 def print_header
   puts "The students of Villians Academy"
   puts "______________"
 end

 def print_footer(students)
  puts "Overall, we have #{students.count} great students"
 end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
