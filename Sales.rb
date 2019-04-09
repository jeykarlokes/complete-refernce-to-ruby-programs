
# 7) n sale in a day 
# name of the person
# item purchased
# no of quantity purchased
# price of single unit
# total amount for each purchase
# end of each day the owner calculates cumulative total of sales made the max and min 
# amount of sales made . 

class Sales
    $name_of_person
    $item_purchased
    $no_of_quantity
    $price_of_unit
    $total_amt

    def getDetails

        print "enter the name of the person = "
        $name_of_person = gets.to_s
        print "enter item to be purchased = "
        $item_purchased =gets.to_s
        puts "enter the no_of_quantity = "
        $no_of_quantity = gets.to_i
        print "enter the price of the unit = "
        $price_of_unit = gets.to_i

    end
    
    def calculate_total
        
        $total_amt = ($no_of_quantity * $price_of_unit)
        print "the  total amount =","\t",$total_amt
       
    end    
    
ss = Sales.new
ss.getDetails
ss.calculate_total

end
