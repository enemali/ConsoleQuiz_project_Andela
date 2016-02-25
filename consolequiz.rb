require 'json'
class Quizapp
  myscore = 0
file = File.read('Physics.json')
question = JSON.parse(file)
subject = {}
basedir = '.'
#alljson = Dir.glob("*.json")
#puts alljson


  puts "Use the Numerical Keys to navigate around the questions"
  puts
  puts "+--+--------------------------+--+
|  | CONSOLE QUIZ APPLICATION |  |
+--+--------------------------+--+
+  +      Made by Enemali     +  +
|  |                          |  |
+  +         at               +  +
|  |                          |  |
+  +  Andela Boot Camp        +  +
|  |        2016              |  |
+--+--------------------------+--+
|  |         Andela           |  |
+--+--------------------------+--+"
  puts " Enter 1 to start the quiz and your time will beging "
  askuser = false
  while !askuser do
    request = gets.to_i
    if request == 1
      askuser = true
    end

  end
  system ("cls")



start = false
  puts " Numerical keys to switch to another question"
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
    puts
    puts "Use the keyboard to select A  ,  B  , C  or  D"
    myans = gets.chomp
    if "D" == myans.upcase
      myscore +=1
      puts myscore
    else
      puts "no"
    end
  else
    puts "Enter Numbers between 0 to 5"
    system ("cls")
    puts "Enter Numbers between 0 to 5"
  end

end
end

