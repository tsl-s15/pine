### Numbers


## Hours in a year
# hours = 356 * 24
# puts hours

## Minutes in a decade
# minutes = 60 * 24 * 365 * 10
# puts minutes



### Mixing it up


## basic gets example
# puts "How are you doing?"
# response = gets.chomp
# puts "It looks like you're doing #{response}!"



### A few things to try


## full name greeting
# puts "What is your first name?"
# first_name = gets.chomp
# puts "What is your middle name?"
# middle_name = gets.chomp
# puts "What is your last name?"
# last_name = gets.chomp
# if middle_name == ""
#   puts "Hello #{first_name} #{last_name}"
# else
#   puts "Hello #{first_name} #{middle_name} #{last_name}"
# end

## Bigger, better favorite number
# puts "What is your favorite number?"
# favorite = gets.chomp.to_i
# better = favorite + 1
# puts "How about #{better}?  ... idiot"


### More about methods


## angry boss
# puts "WHAT!"
# request = gets.chomp
# puts "I DONT WANT TO HEAR #{request.upcase} NONSENSE"


## table of contents
# line_width = 50
# heading_content = "Table of Contents"
# formatted_heading = heading_content.center(line_width)
# puts formatted_heading

# def print_line(chapter_num, chapter_title, page, line_width)
#   chapter = "Chapter #{chapter_num}:  #{chapter_title}"
#   page = "page #{page}"

#   formatted_chapter = chapter.ljust(line_width)
#   formatted_page = page.rjust(line_width/5)

#   puts(formatted_chapter + formatted_page)
# end

# print_line(1, "Getting Started", 1, line_width)
# print_line(2, "Numbers", 9, line_width)
# print_line(3, "Letters", 13, line_width)



### Flow control

## times loop
# 10.times do
#   puts "hello"
# end

## times loop with index
# 10.times do |index|
#   puts "#{index + 1} hello"
# end


## while loop
# count = 0
# while count < 5
#   puts "hello"
#   count = count + 1
# end

## another while loop
# puts "How are you doing?"
# response = gets.chomp
# while response != "good"
#   puts "but seriously, how are you doing?"
#   response = gets.chomp
# end
# puts "Ok cool"







## 99 bottles of beer on the wall
# bottles = 99
# while bottles >= 0
#   loop_number = 0
#   if bottles > 1
#     puts "#{bottles - loop_number} bottles of beer on the wall"
#     bottles = bottles - 1
#     if bottles == 1
#       puts "Take one down, pass it around, #{bottles - loop_number} bottle of beer on the wall"
#     else
#       puts "Take one down, pass it around, #{bottles - loop_number} bottles of beer on the wall"
#     end
#     loop_number = loop_number + 1
#   elsif bottles == 1
#     puts "#{bottles - loop_number} bottle of beer on the wall"
#     bottles = bottles - 1
#     puts "Take one down, pass it around, #{bottles - loop_number} bottles of beer on the wall"
#     loop_number = loop_number + 1
#   else
#     puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
#     bottles = bottles - 1
#   end
# end


## 99 bottles - times loop version
# 99.times do |index|
#   if 99 - index == 1
#     puts "#{99 - index} bottle of beer on the wall, #{99 - index} bottle of beer,"
#     puts "Take one down, pass it around, #{99 - index - 1} bottles of beer on the wall"
#   else
#     puts "#{99 - index} bottles of beer on the wall, #{99 - index} bottles of beer,"
#     if (99 - index - 1) == 1
#       puts "Take one down, pass it around, #{99 - index - 1} bottle of beer on the wall"
#     else
#       puts "Take one down, pass it around, #{99 - index - 1} bottles of beer on the wall"
#     end
#   end
# end
# puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."




## old-school roman numerals


# num = 10
# puts num % 3 # => 1


def old_roman(num)
  tens = "X" * (num/10)
  temp_ones = num%10
  if temp_ones > 5
    ones =  "V" + ("I" * (temp_ones - 5))
  elsif temp_ones == 5
    ones =  "V"
  else
    ones = "I" * temp_ones
  end
  return tens + ones
end

puts old_roman(23) # => XXIII


















































