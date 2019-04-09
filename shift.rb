
arr = []
temp = "*"

def del_and_shift(ar, position)
    index = position - 1
    for i in (index..ar.length-2) do
        ar[i] = ar[i+1]
    end
    ar.delete_at(ar.length-1)
end

#array with size 10 with 10 elements filled
1.upto(10) do |i|
    arr.push(temp*i)
end

puts "Length of the array before deleting...#{arr.length}"
#delete 5th element
# arr.delete_at(4) #this method automatically does the task of deleting and shifting elements towards left

del_and_shift(arr, 5)

puts "Length of the array after deleting...#{arr.length}"
#displaying array
arr.each do |element|
    puts element
end

