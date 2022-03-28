# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# --------------------1) Create a method that takes in an array of words and a single letter and returns all the words that contain that particular letter.

beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']

letter_o = 'o'
# Expected output: ['coffee', 'soda water']
letter_t = 't' 
# Expected output: ['tea', 'water', 'soda water']

# define array take array and letter
# list equals array
# map array to value if it includes letter 
# push value to list
#end section
#end section
# return list wiuth new values
# print output


def new_array (array, letter) 
    list = []
 array.map do |value|
   if value.include? letter
list.push(value)
   end
end
return list
end
p (new_array(beverages_array,letter_o))
p (new_array(beverages_array,letter_t))



#------------old code


# def new_array (array, letter) 
#     array.select do |value|
#         value.include? letter
#         end
#     end

# p new_array letter_o
# p new_array letter_t


#----------------first try
# use include method to check index
# if index inculdes o or t
# output new array with index values include the letters
# const newArr = (array, letter) => {
#   return array.filter(word => word.toLowerCase().includes(letter))
# }
# 



# const newArr = (array, letter) => {
#   return array.filter(word => word.toLowerCase().includes(letter))
# }



# -------------------2) Create a method that takes in an array of numbers and returns the sum of the numbers. Use the test variables provided.

nums_array1 = [42, 7, 27]
# Expected output: 76

nums_array2 = [25, 17, 47, 11]
# Expected output: 100

# use .sum method to get output sum of array
# or .inject
# use the code to add each index to each other using .each
# keep getting unexpected end of input not sure why 
#error given is wrong number og arguments 
#look for a high order funtion to itterate across each value and add each value
#the add the next ones up
#fixed

def sum array
   array.sum 
end
p sum nums_array1
p sum nums_array2

#-----------old code

# def sum(numbers)
#     return 0 if numbers.length < 1
#     result = 0
#     numbers.each { |num| results += num }
#     result
# end

# end 

# --------------------3a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'


#----------------------------------psudo
#named class bike 
#add accessor current speed
#initialize model wheels with minumum of 2 current speed set to 0
#define bike info with information string
#unsure how to fully complete this got stuck on adding pedel option i'll read on classes in ruby more and request assistence on the topic

#----------better psudo
#created bike class and accessor
#current_speed, wheels, model
#define and initilize current_speed, wheels, model
#default values wheels and current speed
#define bike info method
#using string interpolation
#define pedal faster and paramater speed
# created a method adding speed to current speed
# define break 
#created a method subtracting speed from current speed 
#if break is less than zero then equal 0
# created new instance of bike class called go fast
# print go fast with method calls by adding arguments

#---------------class code full code below

# class Bike
#     attr_accessor :current_speed, :wheels, :model
#     def initialize(model) 
#         @model = model
#         @wheels = 2
#         @current_speed = 0
#     end
#     def bike_info
#         "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
#      end
# end



#  tricycle = Bike.new('Trek')
#  p tricycle.bike_info




# # Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'


# # -------------------3b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

#------------------psudo
# #created bike class and accessor
# #current_speed, wheels, model
# #define and initilize current_speed, wheels, model
# #default values wheels and current speed
# #define bike info method
# #using string interpolation
# #define pedal faster and paramater speed
# # created a method adding speed to current speed
# # define break 
# #created a method subtracting speed from current speed 
# #if break is less than zero then equal 0
# # created new instance of bike class called go fast
# #print go fast with method calls by adding arguments


#--------full class code 3A & 3B

class Bike
    attr_accessor :current_speed, :wheels, :model
    def initialize(model) 
        @model = model
        @wheels = 2
        @current_speed = 0
    end
    def bike_info
        "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
     end
     # can not go negative
     # adds speed
     def pedal_faster speed
        @current_speed += speed
     end
     # if current_speed is less than speed then greater than zero than is 0
     def brake speed
       if @current_speed - speed < 0
         0
         # else current_speed equals speed
       else
        @current_speed -= speed
       end
    end
end
tricycle = Bike.new('Trek')
go_fast= Bike.new('Trek')

p tricycle.bike_info
p go_fast.pedal_faster(10)
p go_fast.pedal_faster(18)
p go_fast.brake(5)
p go_fast.brake(25)


# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0