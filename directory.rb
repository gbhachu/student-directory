
# let's put all students into an array
students = []



months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ]

def print(students)

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ]

student_sort = students.sort_by { |student| months.index student[:cohort]}

student_sort.each.with_index(1) do |x, index|
puts "#{index} #{x[:first_name]} #{x[:surname]} (#{x[:cohort]} cohort)".center(60)
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(60)
end

def input_students


puts "Please enter the names of the students."
puts "To finish just hit return twice."
  students = []
  name = gets.chomp
  name = name.to_sym
  while !name.empty? do
    puts "Please enter the cohort of the student."
    cohort = gets.chomp
    cohorts = ["January","February","March","April","May","June","July","August","September","October","November","December"]
      if cohort.empty?
        cohort = :no_input
      else
        while !cohorts.any? { |month| cohort.include? month}
        puts "There are typos in your entry. Could you type the cohort in again please?"
        cohort = gets.chomp
        end
      cohort = cohort.to_sym
      end
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students!"
    puts "Please enter next student."
    name = gets.chomp
    name = name.to_sym
  end
  if name.empty?
    name = :no_name
  end
    puts "Now we have #{students.count} students!"
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
