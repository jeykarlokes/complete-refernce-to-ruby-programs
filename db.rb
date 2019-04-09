# # create 3 tables
# 1st country
#    country code
#    capital
#    life experntncy
#    population
#    surface area
#    capital


# 2nd city 
#    primary key counry_code
#    foreign key country code
#    district
#    capital
#    population
# 3 rd country langupopulation
#    primary key country code
#    langupopulation

# city counry_code find out the capital of the city the district the country code 
# capital population langupopulation spoken and the percentpopulation of the people who speaks the langupopulation







require 'rubygems'
require 'sqlite3'

$db = SQLite3::Database.new("dbfile")
$db.results_as_hash = true

def disconnect_and_quit
  $db.close
  puts "Bye!"
  exit
end

# 1st country
#    country code
#    capital
#    life experntncy
#    population
#    surface area
#    capital

def create_country_table
  puts "Creating country  table"
  $db.execute %q{
    CREATE TABLE country1( country_code  integer primary key, capital varchar(50), life_expectancy varchar(50), surface_area integer , population integer) }
    puts "Table Created Successfully ................."
end

def add_the_table
  puts "Enter the country code  "
    country_code = gets.to_i
  puts "Enter capital :"
  capital = gets.chomp
  puts "Enter life expectancy :"
  life_expectancy = gets.chomp
  puts "Enter surface area :"
  surface_area = gets.to_i
  puts "Enter the population :"
  population = gets.to_i
  $db.execute("INSERT INTO country1 (country_code,capital, life_expectancy, surface_area,population) VALUES (?, ?, ?, ?, ?)",country_code,capital, life_expectancy, surface_area,population)
  puts " Record created Successfully.........."
end



def delete_the_table 
  puts "Enter country_code  to be deleted : "
  country_code = gets.to_i
  
  $db.execute("DELETE FROM country1 where counry_code = ?", country_code)
  puts "Record deleted Successfully......."
end



def display_the_table 
  person = $db.execute ("SELECT * from country1")
  if person.count == 0
      printf " No record found........\n"
  else
    printf "\t\tcounry_code\tcapital\tlife_expectancy\tsurface_area\tpopulation  \n\n"
   person.each do |row|
      printf "\t\t%d\t%s\t%s\t%s\t%d\n", row[0], row[1], row[2],row[3],row[4]
   end
  end
end


def  update_the_table
  puts "Enter the counry_code to be modified : "
  counry_code = gets.to_i
  puts "Enter the capital to be modified : "
  capital = gets.chomp
  $db.execute("Update country1 set capital = ? where counry_code = ? ", capital, counry_code)
  puts "Record Updated Successfully......."
end



def find_the_table
  puts "Enter counry_code of person to find : "
  counry_code = gets.to_i
  person = $db.execute("SELECT * FROM country1 WHERE counry_code = ?", counry_code)
  
  if person.count == 0
      printf " No record found........\n"
  else
   person.each do |row|
      printf "counry_code : %d\ncapital : %s\nlife_expectancy : %s\nsurface_area : %s\npopulation : %d \n", row[0], row[1], row[2],row[3],row[4]
   end
  end
 end



loop do
  puts %q{Please select an option:

  1. Create country  table
  2. Add the tables in the country 
  3. find the table 
  4. Delete the table 
  5. Display the table 
  6. Update the table 
  7. Quit }
  
  case gets.chomp
    when '1'
      create_country_table
    when '2'
      add_the_table
    when '3'
      find_the_table
    when '4'
      delete_the_table
    when '5'
      display_the_table
    when '6'
      update_the_table
    when '7'
      disconnect_and_quit
  end
end
