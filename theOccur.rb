#Write a program that will read line and calculate the number occurences of the word 'the'.

count = 0

text = File.read('sam.txt')

puts "Text from the file: #{text}"

File.readlines('sam.txt').each do |line|
    line.scan(/\bthe\b/) do
        count += 1
    end
end

puts "Number of 'the' words: #{count}"