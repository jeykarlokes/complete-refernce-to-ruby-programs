require ''

class  Employee
    $employee = [0,1,2,3,4,5,6,7,8,9] 
    $empname =[]
    $empid = [] 
    $empphone_no = []

    include getDetails
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

    def getBasic_pay
        for i in (1..9)
            @basic_Pay = []
            print "enter the basic pay of the employee  : #{$employee[i]}","\n"
            @basic_Pay = gets.to_i
        end
    end

    def getFpay
        @dallowance = [] 
        @hra = []
        @pf = []
        for i in(1..9)
            print "the dallowance of the  employeee  :  #{$employee[i]}","\n"
            @dallowance[i] = gets.to_i
            print "enter the hra of the employeee  : #{$employee[i]}","\n"
            @hra[i]  = gets.to_i
            print "enter the pf of the employeee  : #{$employee[i]}","\n"
            @pf[i] = gets.to_i
        end
    end

    def gross_Pay
        for i in (1..9)
            @grossPay = []
            @grossPay[i] = @hra + @dallowance + @pf 
            print "enter the gross pay of the emeploye : #{$employee[i]}","\n"
            @grossPay[i] = gets.to_i
        end
    end



    def net_Pay
        for i in (1..9)
        @netPay = []
        @netPay[i] = @grossPay-@pf  
        print "enter the net  pay of the employee : #{$ememployee[i]}","\n"
        @netPay[i] = gets.to_i
    end
    
   


    end
    puts"heloo entire the program"

    e = Employee.new
    e.getDetails
    e.getBasic_pay
    e.getFpay
    e.gross_Pay
    e.net_Pay
end


