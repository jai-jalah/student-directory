def input_students
  puts "Please enter the names of the students"
  puts "To finish, enter 'submit'"
  students = []
  name = gets.delete!("\n") #Exercise 10

  if name == "submit"
    students
  else

  puts "Please enter the month of cohort"
  cohort = gets.delete!("\n")

  if cohort.empty?
    cohort = "january"
  end

  puts "Please enter date of birth :dd/mm/yyyy"
  dob = gets.delete!("\n")

  puts "Favourite hobby"
  hobby = gets.delete!("\n")

  puts "Height in cm"
  height = gets.delete!("\n")

  students << {name: name, cohort: cohort, dob: dob, hobby: hobby, height: height}

  puts "Now we have #{students.count} students"
  name = gets.delete!("\n")

  until name == "submit" do

        puts "Please enter the month of cohort"
        cohort = gets.delete!("\n")

        if cohort.empty?
          cohort = "january"
        end

        puts "Please enter date of birth :dd/mm/yyyy"
        dob = gets.delete!("\n")
        puts "Favourite hobby"
        hobby = gets.delete!("\n")
        puts "Height in cm"
        height = gets.delete!("\n")
        students << {name: name, cohort: cohort, dob: dob, hobby: hobby, height: height}
        puts "Now we have #{students.count} students"
        name = gets.delete!("\n")
  end

  end
  students
end

def print_header
  puts "The students of Villains Academy".center(5)
  puts "-------------".center(32)
end

#Exercise 1, each_with_index made redunant by changing from .each method to utlizing while (as per exercise 4)
#def print(students)
  #students.each_with_index do |student, index| #Exercise 1
    #indexplusone = index + 1 #Exercise 1 cont.
    #if student[:name].length <= 12 && student[:name].chars.first == "a" #Exercise 2 + Exercise 3
    #puts "#{indexplusone}. #{student[:name]} (#{student[:cohort]} cohort)"
    #end
  #end
#end

def print(students) #Exercise 8
counter = 0
  puts "Which cohort would you like to print? "
  answer = gets.delete("\n")
  while counter < students.length do
    index = counter + 1
    if students[counter][:name].length <= 12 && students[counter][:name].chars.first == "a" && answer == students[counter][:cohort]
      puts "#{index} #{students[counter][:name]} #{students[counter][:cohort]} cohort
      Date of Birth: #{students[counter][:dob]}
      Favourite Hobby: #{students[counter][:hobby]}
      Height(cm): #{students[counter][:height]}"
    else
      "No students in that cohort, yet... "
    end
    counter = counter + 1
  end
end

def print_footer(students)
  if students.count > 1
    puts "Overall, we have " "#{students.count} + great students".center(65)
  else
    puts "Overall, we have " "#{students.count} + great student".center(65)
  end
end

students = input_students

if !students.empty?
  print_header
  print(students)
  print_footer(students)
else
  puts "No students registered yet."
end
