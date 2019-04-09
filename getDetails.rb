module 

def getDetails
        for i in (1..9)
            print "enter the name of the  employee: #{$employee[i]}","\n"
            $empname[i] = gets.to_i
            print "enter the id of the employee: #{$employee[i]}","\n"
            $empid[i] = gets.to_i
            print"enter the phone no of the  employee:#{$employee[i]}","\n"
            $empphone_no[i] = gets.to_i
        end


    end
