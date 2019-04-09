
# 3)
# Create two classes DM and DB which stores the values in distances 
# DM stores distance in m and cm 
# DB stores distance in ft and inches

# write a program that can read values for the class object and add one object of DM with ANOTHER OBJECT OF DB

# Display should b in the format of ft and inches or m and cm


class DM

    def displayf(distance_metre,distance_centi)
    puts "diplay the details in feets  and inches"
    @df  = distance_metre * 3.28084
    @dc  = distance_centi * 0.0328084
    puts  "......distance in feet",@df 
    
    puts "distance in inches",@dc


end

    
end

# 1m = 3.28084
# 1cm = 0.0328084

class DB < DM
 
    def dispalaym(distance_feet,distance_inch)
        @dm   = distance_feet * 0.3048
        @df   = distance_inch * 2.54
        puts  "......distance in metres   ",@dm  
        
        puts "distance in centi metres ",@df  
    end

 ob2  = DB.new
ob2.displayf(22,33)
ob2.dispalaym(22,33)
end


