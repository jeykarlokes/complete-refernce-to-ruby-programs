
# 4)to perform calculate the simple intrest of three banks a, b, c . using meathods .
# bank a , b, c rate of intrest is 10 , 9 , 7  respectively , calculate si for a given input and
# specify a suitable bank to be intrested


class Bank

$bank = ['bank1','bank2','bank3']
$si = []
$copy = []
$principal_amt 
$no_Of_years
$rateof_interest1 = [10,9,7]
$rateof_interest2 = 9
$rateof_interest3 = 7

    def getDetails
        puts "enter the principal amount "
        $principal_amt  =  gets .to_i
        puts "enter the no_of years"
        $no_Of_years = gets.to_i
    end

    def calculate
            for i in (0..2)
                print "calclulate of simple interst of #{$bank[i]} =","\t"
                $si[i] = ($principal_amt * $no_Of_years * $rateof_interest1[i] )/ 100

                puts  $si[i]


            end
        #  $copy = $si.sort
        #  puts "si of 1",$copy[0]
                if(($si[0] < $si[1]) && ($si[0] < $si[2]) ) 
                    print " the bank a is less intersest compared to bank b and bank c "
                   elsif($si[1] < $si[2]) 

                    print "the bank b is lesser compared to bank C"
                
                   else
                        puts "the bank c is lesser compared to all"
                
                end
        


                

        
        end
    end


bb = Bank.new
bb.getDetails
bb.calculate


