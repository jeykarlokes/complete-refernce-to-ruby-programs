# 1)

# A supermarket requires a automated program to print the expenses,
# quantity and price per item are the inputs
# expense=
# and discount of 10 percent is offered if the expense is more than 5000
# automate the above scenario using program.


class Supermarket
$quantity
$price_per_item

    def getInputdetails
    print "enter the quantity = " ,"\t"
    $quantity = gets.to_i
    print  "enter the price per item ","\t"
    $price_per_item = gets.to_i

    end
    def calculate_Expenses
        print "the total expenses of the purchased =","\t"   
        @expense = $quantity * $price_per_item
        puts @expense
        if (@expense > 5000)
            print "10 % discount is awarded for the user "
            @new_expense = (@expense * 10 ) / 100
            puts  "******************","\n"
            puts "the  new expenses is ","/t"
            print @new_expense
        else
            puts "************","\n"
            puts "no more discounts are availed to the user ......"
        end
    end

sd  =  Supermarket.new
sd.getInputdetails
sd.calculate_Expenses

end
