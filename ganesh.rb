require 'rubygems'
require 'sqlite3'

$db = SQLite3::Database.new("dbfile")
$db.results_as_hash = true

def disconnect_and_quit
  $db.close
  puts "Bye!"
  exit
end

def create_table
  puts "Creating people table"
  $db.execute %q{
    CREATE TABLE people1 ( id integer primary key, name varchar(50), job varchar(50), gender varchar(6), age integer)
   }
    puts "Table Created Successfully ................."
end

def add_person
  puts "Enter Id "
  id = gets.to_i
  puts "Enter name:"
  name = gets.chomp
  puts "Enter job:"
  job = gets.chomp
  puts "Enter gender:"
  gender = gets.chomp
  puts "Enter age:"
  age = gets.to_i
  $db.execute %q{
    (INSERT INTO people1 (id,name, job, gender, age) VALUES (?, ?, ?, ?, ?),id,name,job,gender,age)
  }
  
    puts " Record created Successfully.........."
end



def delete_person
  puts "Enter ID to be deleted : "
  id = gets.to_i
  
  $db.execute("DELETE FROM people1 where id = ?", id)
  puts "Record deleted Successfully......."
end



def display
  person = $db.execute ("SELECT * from people1")
  if person.count == 0
      printf " No record found........\n"
  else
    printf "\t\tID\tName\tJob\tGender\tAge  \n\n"
   person.each do |row|
      printf "\t\t%d\t%s\t%s\t%s\t%d\n", row[0], row[1], row[2],row[3],row[4]
   end
  end
end


def  update_person
  puts "Enter the ID to be modified : "
  id = gets.to_i
  puts "Enter the Name to be modified : "
  name = gets.chomp
  $db.execute("Update people1 set name = ? where id = ? ", name, id)
  puts "Record Updated Successfully......."
end



def find_person
  puts "Enter ID of person to find : "
  id = gets.to_i
  person = $db.execute("SELECT * FROM people1 WHERE id = ?", id)
  
  if person.count == 0
      printf " No record found........\n"
  else
   person.each do |row|
      printf "ID : %d\nName : %s\nJob : %s\nGender : %s\nAge : %d \n", row[0], row[1], row[2],row[3],row[4]
   end
  end
 end



loop do
  puts %q{Please select an option:

  1. Create people table
  2. Add a person
  3. Look for a person
  4. Delete a person
  5. Display All Records
  6. Update a person
  7. Quit }
  
  case gets.chomp
    when '1'
      create_table
    when '2'
      add_person
    when '3'
      find_person
    when '4'
      delete_person
    when '5'
      display
    when '6'
      update_person
    when '7'
      disconnect_and_quit
  end
end
