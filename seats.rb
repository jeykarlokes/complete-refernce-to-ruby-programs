#current year - 120
#upcoming year - 180
#adding same number of seats for every year
#find seats after 'n' years

print "Enter current year seats: "
currentSeats = gets.to_i
print "Enter upcoming year seats: "
upcomingSeats = gets.to_i
seatsIncreased = upcomingSeats - currentSeats

print "Enter number of years after which you want to find the number of seats provided: "
numOfYears = gets.to_i
seats = currentSeats + (seatsIncreased * numOfYears)

puts "Total Seats: #{seats}"