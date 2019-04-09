#Write a program that will read line and calculate the number occurences of the word 'the'.

float  = 0

text = File.read('DG2.txt')

puts "Text from the file: #{text}"

File.readlines('DG2.txt').each do |line|
   
    line.scan(/\bthe\b/) do
   
        count += 1
    end
end

puts "Number of 'the' words: #{float}"