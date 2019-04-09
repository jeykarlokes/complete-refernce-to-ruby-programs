class Student

 $student = [1,2,3]
$Student_id = []
$Student_name = []
$p_marks = []
$chy_marks = []
$mat_marks = []
$total_marks = []
$s_school= []

def getStudent_details
    for i in (0..2)
    print "enter the student #{$student[i]} name = "
    $Student_name[i] = gets.to_s
    print "enter the student #{$student[i]} id = "
    $Student_id[i] = gets.to_i
    print "enter the student #{$student[i]} phy marks =  "
    $p_marks[i] = gets.to_i
    print "enter the student #{$student[i]} chy marks =  "
    $chy_marks[i] = gets.to_i
    print "enter the student #{$student[i]} mat  marks =  "
    $mat_marks[i] = gets.to_i
    print "enter the student #{$student[i]} school = "
     $s_school[i] = gets.to_s
    end
end

def calculate_mark
    for i in (0..2)
    $total_marks[i]  = ($p_marks[i] + $chy_marks[i] + $mat_marks[i]) 
    print "the total marks of student #{$student[i]} =  ","\t","\n"
    
    print $total_marks[i]
    end
end


ss = Student.new
ss.getStudent_details
ss.calculate_mark
end
