require 'json'

file = File.read('Physics.json')
question = JSON.parse(file)
subject = {}
basedir = '.'
alljson = Dir.glob("*.json")
puts alljson
puts "Use the Numerical Keys to navigate around the questions"

 start = false
 while !start
   qsn = gets.to_i-1
   if qsn.between?(0,5)
    subject = question.values[qsn]
    system ("cls")
    puts subject.keys[0]
    puts
    puts subject.values[0]
    puts
    puts subject.keys[1]+" "+subject.values[1]
    puts subject.keys[2]+" "+subject.values[2]
    puts subject.keys[3]+" "+subject.values[3]
    puts subject.keys[4]+" "+subject.values[4]
   else
     puts "Enter Numbers between 0 to 5"
     system ("cls")
     puts "Enter Numbers between 0 to 5"
   end
end

