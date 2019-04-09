
# Mr.x goes to a dietician for consulting. the dieticians calculates the bmi using the formula 
# bmi=weight/(heights)square
# if bmi >25 
# then mr.x is obese 
# else he is healthy
# write a program depict the scenario with displaying a msg obese or healthy

class Bmi
    $bmi
    def getPatientDetails
        print  "enter the height of the patient in m ...."
        @height = gets.to_f
        print  "enter the weight of the  patient in kg ..."
        @weight =  gets.to_f
    end

    def cal_bmi
            print "the bmi of the patient is ...","\t"
            @h_sq = @height *  @height
            $bmi  = @weight / @h_sq

            print $bmi,"\n"
            if ($bmi > 25)
                puts "the patient is obse........."
            elsif ($bmi  < 19)
                puts "the patient is lean"
            else
                puts "the patient is normal .........."
            end
            
    end

    sd =  Bmi.new
    sd.getPatientDetails
    sd.cal_bmi
end


        

    