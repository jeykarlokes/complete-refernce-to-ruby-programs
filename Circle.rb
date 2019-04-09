# 1)
# create a class named  circle with data member radius, pi (constant member)
# the member functions are 
# a- To accept the radius from the user
# b- To calc the area of the circle 
# c- to display the details
# circle = pi * r * r

class  Circle 
    $radius 
    $pi = 3.14

    def acceptRadius 
    print "enter the radius of the circle == "
    $radius =  gets.to_i

    end
    def calcRadius 
     
    puts "calculation process starts........"
    @result = $pi * $radius * $radius 
    end

    def display
    print "the radius of the circle ==",@result,"\n" 
        puts "............................."
    end
    ob1 = Circle.new
    ob1.acceptRadius
    ob1.calcRadius
    ob1.display
end

