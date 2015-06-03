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

# def old_roman_numeral num # 23
#   roman = ''
#   roman = roman + 'M' * (num / 1000)
#   roman = roman + 'D' * (num % 1000 / 500)
#   roman = roman + 'C' * (num % 500 / 100)
#   roman = roman + 'L' * (num % 100 / 50)
#   roman = roman + 'X' * (num % 50 / 10)
#   roman = roman + 'V' * (num % 10 / 5)
#   roman = roman + 'I' * (num % 5 / 1)
#   roman
# end

# puts old_roman_numeral(3243) # => XXIII


# def roman_numeral num # 59
#   # thous = (num / 1000)
#   # hunds = (num % 1000 / 100)
#   tens = (num % 100 / 10) # 5
#   ones = (num % 10 ) # 9
#   # roman = 'M' * thous
#   roman = ''


#   # if hunds == 9
#   #   roman = roman + 'CM'
#   # elsif hunds == 4
#   #   roman = roman + 'CD'
#   # else
#   #   roman = roman + 'D' * (num % 1000 / 500)
#   #   roman = roman + 'C' * (num % 500 / 100)
#   # end

#   if tens == 9
#     roman = roman + 'XC'
#   elsif tens == 4
#     roman = roman + 'XL'
#   else
#     roman = roman + 'L' * (num % 100 / 50) # 1
#     roman = roman + 'X' * (num % 50 / 10) # 0
#   end

#   if ones == 9
#     roman = roman + 'IX'
#   elsif ones == 4
#     roman = roman + 'IV'
#   else
#     roman = roman + 'V' * (num % 10 / 5)
#     roman = roman + 'I' * (num % 5 / 1)
#   end

#   roman
# end
# puts(roman_numeral(59))






### Creating new classes


## puppy example
# class Puppy
#   attr_accessor :age, :name, :health

#   def age
#     return @age
#   end

#   def age=(input)
#     @age = input
#   end

#   def initialize(age, name)
#     self.age = age
#     self.name = name
#     self.health = 5
#   end

#   def feed
#     self.health = self.health + 1
#     puts "Your puppy's health is now #{self.health}"
#   end

# end

# p1 = Puppy.new(3, "Mowgli")
# p1.name = "Hunter"
# puts p1.inspect
# puts "Your puppy's age is #{p1.age}"
# p1.age = 5
# puts "Your puppy's age is #{p1.age}"

# puts "What do you want to do?"
# response = gets.chomp
# if response == "feed"
#   p1.feed
# end



## orange tree

class OrangeTree
  attr_accessor :height, :age, :fruits, :living

  # this sets default values
  def initialize
    self.height = 0
    self.age = 0
    self.fruits = 0
    self.living = true
  end

  def one_year_passes
    if self.age < 50
      self.grow_older
      self.grow_taller
      self.grow_fruit
      puts "your tree is now #{self.age} years old, #{self.height} feet tall and has #{self.fruits} fruits"
    else
      puts "DEAD"
    end
  end

  def grow_fruit
    if self.age > 3
      self.fruits = 2 + self.age * 2
    end
  end

  def grow_older
    self.age = self.age + 1
  end

  def grow_taller
    self.height = self.height + 2
  end

  def print_fruit_count
    puts "Your tree has #{self.fruits} fruit."
  end


  def pick_fruit
    self.fruits = self.fruits - 1
    self.print_fruit_count
  end


end

tree = OrangeTree.new
puts tree.inspect
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.pick_fruit
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes





















































