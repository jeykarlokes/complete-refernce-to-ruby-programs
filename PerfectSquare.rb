# #prfect sq = 

# 4
# 2*2
# 2+2
class Square 

def perfectnumber(number)
    result =false
    sqrt = Math.sqrt(number)
    result = number == (sqrt * sqrt)
    return result
    puts "result is true ==",result

end

print "enter the number"
$number  = gets.to_f
sq =  Square.new
sq.perfectnumber($number)
end
