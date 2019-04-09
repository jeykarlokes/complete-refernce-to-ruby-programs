
# 3)

# our institute has decided to inc the number of seats from 120 t0 180 for the upcoming year 
# further they have also decided to increase the same number of seats every year subsequently
# find out how many students will b there from n years from now

# 120,180,240…..n

class Series
$no_of_years
print "enter the no of years","\t"
$no_of_years = gets.to_i
def inc
        @no_of_seats = 120

        print "the total no of seats ......"
        @total = @no_of_seats + ($no_of_years * 60 )
        print @total,"\n"
        puts "............end............"
end

ss = Series.new
ss.inc
end



