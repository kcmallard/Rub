#Cheat Sheet for Ruby code
=begin
multi line comments
are like this...
=end

=begin 
Some of the neat methods covered::::::::::::::::::::
.length
.reverse
.upcase
.downcase
.include
.capitalize
.gets.chomp
.gsub
.split
=end

=begin
Some of the lang basics::::::::::::::::::::::::::::::
-If statements
-Tricks with strings
-Loops
-Arrays
-Hashes
=end

puts "Kyle is awesome".length
puts "Kyle is awesome".reverse
puts "kyle is awesome".upcase
puts "KYLE IS AWESOME".downcase
string = "string"
intgr = 45
product = 45*9

#Can only chain methods on variable, not literals:
name = "kyle"
puts name.downcase.reverse.upcase

#User input and explain the '!' (it changes the variable indefinitely)
puts "What's your name?"
name = gets.chomp
name.capitalize!
puts "Your name is #{name}"
puts "What's your other name?"
otherName = gets.chomp.upcase!
puts "Your other name is #{otherName}"

#if statement basics:::::::::::::::::::::::::::::::::::::
print "Integer please: "
user_num = Integer(gets.chomp)
if user_num < 0
	puts "tis neg"
elsif user_num > 0
	puts "tis pos"
else
	puts "tis 0"
end
#------------------------------------------------------		
if true
	puts "true"
end
#------------------------------------------------------
hungry = false
unless hungry
	puts "I'm busy, MOM!"
else
	puts "Time to eat!"
end
#------------------------------------------------------
is_true = 2 != 3
is_false = 2 == 3
var = true && 100
var2 = true || 100
var3 = !true
#------------------------------------------------------
problem = false
puts "Good" unless problem

#Tricks with strings:::::::::::::::::::::::::::::::::::::
puts "Gimme a word!"
user_input = gets.chomp
if user_input.include? "s"
	puts "Your shit has an 's' in it!!!"
else
	puts "Your shit doesn't have an 's' in it :("
end
#------------------------------------------------------
if user_input.include? "s"
	user_input.gsub!(/s/, "th")
end
puts user_input
#------------------------------------------------------
puts "Say something"
something = gets.chomp
puts "Redact something"
redact = gets.chomp
words = something.split(" ")
words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end 
end

#Loops:::::::::::::::::::::::::::::::::::::::::::::::
counter = 1
while counter < 11
	puts counter
	counter = counter + 1
end
#------------------------------------------------------
counter = 1
until counter == 11
	puts counter
	counter += 1
end
#------------------------------------------------------
for num in 1...10 #this is exclusive
	puts num
end
#------------------------------------------------------
for num in 1..15 #this is inclusive (or vice versa... idk)
	puts num
end
#------------------------------------------------------
i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end
#------------------------------------------------------
i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end
#------------------------------------------------------
array = [1,2,3,4,5]
array.each do |x|
  x += 10
  puts "#{x}"
end
#------------------------------------------------------
10.times{puts"hey"}
#------------------------------------------------------
i = 1
while i < 51
    print i
    i+=1
end
#------------------------------------------------------
i = 1
until i > 50 do
    print i
    i+=1
end
#------------------------------------------------------
for i in 1..50
print i
i+=1
end
#------------------------------------------------------
i = 1
loop do 
    print "Ruby!"
    i+=1
    break if i > 30
end
#------------------------------------------------------
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]
family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}
friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }
#------------------------------------------------------
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each do |sub_array|
    sub_array.each do |y|
        puts y
    end 
end

#Arrays::::::::::::::::::::::::::::::::::::::::::::::::
demo_array = ["Kyle", "Ben", "Jen"]
puts demo_array[2]
#------------------------------------------------------
languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
languages.each {|x| puts "#{x}"}
#------------------------------------------------------
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
multi_d_array.each { |x| puts "#{x}\n" }
#------------------------------------------------------
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each do |sub_array|
    sub_array.each do |y|
        puts y
    end 
end

#Hashes:::::::::::::::::::::::::::::::::::::::::::::::::
my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}
puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]
#------------------------------------------------------
empty_hash = Hash.new
#------------------------------------------------------
empty_hash["Stevie"] = "cat"
puts empty_hash["Stevie"]
#------------------------------------------------------
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]
family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}
friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }
#------------------------------------------------------
secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
secret_identities.each do |x, y|
    puts "#{x}: #{y}"
end
#------------------------------------------------------
#You need to 'Create the Histogram' next