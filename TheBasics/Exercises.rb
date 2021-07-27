#Add two strings together that, when concatenated, return your first and last name as your full name in one string.
first = "Tom"
last = "Haney"
puts first + " " + last

#Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
puts "Give me the 4 digit number, right NOW"
four_digits = gets.chomp.to_i
puts "Thousands: " + (four_digits / 1000).to_s
puts "Hundreds: " + ((four_digits % 1000) / 100).to_s
puts "Tens: " + (((four_digits % 1000) % 100) / 10).to_s #Can be made more efficient, four_digits % 100 divided 10 (from book solution)
puts "ones: " + (((four_digits % 1000) % 100) % 10).to_s #Can be made more efficient, four_digits % 10 (from book solution)

#Write a program that uses a hash to store a list of movie titles with the year they came out. 
#Then use the puts command to make your program print out the year of each movie to the screen.
movies_seen_this_month = {TheRunningMan: 1987, DaddysHome: 2015, TheTerminal: 2004, TheBigLebowski: 1998, Evangelion2dot0: 2009, ThePlatform: 2019}
movies_seen_this_month.each { |movie, year| puts "#{year}"}

#Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
movie_years = [1987, 2015, 2004, 1998, 2009, 2019]
movie_years.each { |year| puts "#{year}" }

#Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
base = 5 * 4 * 3 * 2
puts base
puts base * 6
puts base * 7 * 6
puts base * 8 * 7 * 6

#Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
puts 3.97**2
puts 9.222348**2
puts 19.00001**2

