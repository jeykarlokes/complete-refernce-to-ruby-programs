# A restaurant served 72 men, 84 women and 49 children on friday night. On Saturday night, they served 86 men, 72 women and 46 children. Express this information in a two dimensional array. Using this array, find the total number of men, women and children served over the Friday to Saturday period.

#[men, women, children]
fridayServed = [72, 84, 49]
saturdayServed = [86, 72, 46]

allDaysServed = [
    fridayServed,
    saturdayServed
]

# puts totalServed.inspect
totalMenServed = 0
totalWomenServed = 0
totalChildServed = 0

allDaysServed.each do |eachDayServed|
    totalMenServed += eachDayServed[0]
    totalWomenServed += eachDayServed[1]
    totalChildServed += eachDayServed[2]
end

puts "Men: #{totalMenServed} -- Women: #{totalWomenServed} -- Children: #{totalChildServed}"