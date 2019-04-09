require 'csv'

#https://docs.ruby-lang.org/en/2.1.0/CSV.html

def display(yearOfJoin)
    #a line at a time
    puts ""
    puts "RollNo--Name--Department--Course--YearOfJoin"
    CSV.foreach('studentData.txt') do |row|
        if row[4].to_i == yearOfJoin
            puts "#{row[0]}--#{row[1]}--#{row[2]}--#{row[3]}--#{row[4]}"
        end
    end
end

def displayStudent(rollNo)
    puts ""
    CSV.foreach('studentData.txt') do |row|
        if(row[0].to_i == rollNo)
            puts "#{row[0]}--#{row[1]}--#{row[2]}--#{row[3]}--#{row[4]}"
            return
        end
    end
end

print "Enter the year of join: "
yearOfJoin = gets.to_i
display(yearOfJoin)

puts ""

print "What's the student's roll number: "
rollNo = gets.to_i
displayStudent(rollNo)