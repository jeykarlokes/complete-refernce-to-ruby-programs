print "Enter a text: "
text = gets.chop.downcase

count = 0

for i in (0..text.length - 1) do
    if i == text.length - 1
        break
    elsif text[i].match(/[aeiou]/) and text[i+1].match(/[aeiou]/)
        count += 1
    end
end

puts "Number of successive vowels: #{count}"