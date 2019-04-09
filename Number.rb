
# 4)
# Assume an integer array of size 10
# insert values in it
# write a function to delete the 5th value
# and shift the values from 6th to 10th by one place towards left
# Display the entire array
class Number
    $num  = [10]
    $mem = [1,2,3,4,5,6,7,8,9,10]

    def insertVal
        for i  in (0..9)

            print "add #{$mem[i]} element","\n"
            $num[i] = gets.to_i
        end
    end

    def deleteVal
        print "enter the index of the element to remove == "
        @index = gets.to_i
        $num[@index].pop
        print $num        


    end

    nu  = Number.new
    nu.insertVal
    nu.deleteVal

end


