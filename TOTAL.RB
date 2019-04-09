bmi = weight / (height ** 2)

1.upto(3) do |i|
    0.upto(5) do |j|
        print j.to_s * 4
    end
    puts ""
end

require "./name.rb"
require "./name2.rb"

include Module1
include Module2

displayDay
displayGreeting



float  = 0

text = File.read('DG2.txt')

puts "Text from the file: #{text}"

File.readlines('DG2.txt').each do |line|
   
    line.scan(/\bthe\b/) do
   
        count += 1
    end
end

puts "Number of 'the' words: #{float}"



numOfVowels = 0
str.scan(/[aeiou]/) do
    numOfVowels = numOfVowels + 1
end

numOfConsonants = 0
str.scan(/./) do |letter|
    if !letter.match(/[aeiou ]/)
        numOfConsonants = numOfConsonants + 1
    end
end