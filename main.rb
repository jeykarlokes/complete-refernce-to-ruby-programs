print "What's your sweet name? "
name = gets.chop
print "What's your weight (kg)? "
weight = gets.to_f
print "What's your height (m)? "
height = gets.to_f

bmi = weight / (height ** 2)

puts "Your BMI is #{bmi}"
if bmi > 25
    puts "You're obese :( Take care of your health, #{name} :)"
else
    puts "You're healthy, #{name} :)"
end