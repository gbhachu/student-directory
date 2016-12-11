@Months =["january","febuary","march","april","may","june","july","august","september","october","november","december"]
name = gets.chomp
puts "Hit Enter Twice to continue!".center(60)

def get_user_input
   properties = {}

   puts "Please enter the name of the student:"
   properties[:name] = gets.slice(0..-2) # alternative to gets.chomp


  cohort = false
  while  cohort == false
   puts "Please enter cohort: "
   cohort = gets.chomp.downcase
  if !@Months.include? cohort
      puts "Invalid entry please re-enter cohort:"
    else
      cohort = true
    end
  end
  properties[:cohort] = gets.chomp

   puts "Please enter the country of birth of the student, to finish, hit enter twice:"

   properties[:country] = gets.chomp


   properties[:cohort] == '' ? properties[:cohort] = ':cohort' : properties[:cohort] = properties[:cohort]
   properties[:country] == '' ? properties[:country] = ':country' : properties[:country] = properties[:country]

   return properties
 end

 def input_students
   students = []
   properties = get_user_input()
   grouped = {}

   index = 0
   while !properties[:name].empty? do
     students << properties

     if (!grouped[students[index][:cohort]])
       grouped[students[index][:cohort]] = [].push(students[index])
     else
       grouped[students[index][:cohort]].push(students[index])
     end
     puts "-----------".center(60)
     # (students.count == 1) ? puts "Now we have #{students.count} student" : puts "Now we have #{students.count} students"

     if students.count == 1 && grouped.count == 1
       puts "We have #{students.count} student".center(60)
       puts "We have #{grouped.count} group".center(60)
     else
       puts "We have #{students.count} students".center(60)
       puts "We have #{grouped.count} groups".center(60)
     end

     puts "-----------".center(60)

     properties = get_user_input()
     index += 1
   end
   return students
 end


 def print_header
   puts "The students of Villains Academy are:".center(60)
 end


 def print(students)
   index = 0
   if students.length > 0
     while students.length > index
       student = students[index]
       puts "#{student[:name]}; #{student[:cohort]}; #{student[:country]}".center(60)
       index += 1
     end
   else
     puts 'Please make sure to enter the name of the student'
   end

 end


 def print_footer(names)
   if names.count == 1
     puts "Overall, we have #{names.count} great student"
  else
   puts "Overall, we have #{names.count} great students"
 end
 end

 # Assign the result from input_students to names
 names = input_students

 #nothing happens until we call the methods
 print_header()
 puts "------------".center(60)
 print(names)
 puts "------------".center(60)
 print_footer(names)
