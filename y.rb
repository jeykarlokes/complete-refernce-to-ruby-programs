arr = []

def push(stack, element)
    print "\nInput element is #{element}. \n"
    stack[stack.length] = element;
    displayArray(stack);
end

def pop(stack)
    puts "\nPopped element: #{stack[stack.length - 1]}"
    stack.delete(stack[stack.length-1])
    displayArray(stack)
end

def displayArray(array)
    print "Values in the stack: "
    array.each do |element|
        print element, "\t"
    end
    puts ""
end

print "\n**Push**\n"
# push(arr, 1)
# push(arr, "Hai")
for i in (0..10)
    push(arr, i)
end

print "\n**Pop**\n"
pop(arr)
