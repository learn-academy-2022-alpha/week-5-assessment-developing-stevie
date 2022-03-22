# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# --------------------1) Create a method that takes in an array of words and a single letter and returns all the words that contain that particular letter.

beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']

letter_o = 'o'
# Expected output: ['coffee', 'soda water']
letter_t = 't' 
# Expected output: ['tea', 'water', 'soda water']

# use include method to check index
# if index inculdes o or t
# output new array with index values include the letters
# const newArr = (array, letter) => {
#   return array.filter(word => word.toLowerCase().includes(letter))
# }
#not sure why its returning undefined 

# def new_array (array, letter) 
#     array.select do |value|
#         if value.inculde? letter
#         end
#     end


# def new_array (array, letter) 
#     list = []
#  array.map do |value|
#    if value.inculde? letter
# list.push(value)
#    end
# end
# return list
# end
# p (new_array(beverages_array,letter_t))




# -------------------2) Create a method that takes in an array of numbers and returns the sum of the numbers. Use the test variables provided.

nums_array1 = [42, 7, 27]
# Expected output: 76

nums_array2 = [25, 17, 47, 11]
# Expected output: 100

# use .sum method to get output sum of array
# or .inject
# use the code to add each index to each other using .each
# keep getting unexpected end of input not sure why 

def numbers = array

def sum(numbers)
    return 0 if numbers.length < 1
    result = 0
    numbers.each { |num| results += num }
    result
end

end 

p sum



# --------------------3a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'


#------------------------check list 
 #If there is not a checkmark, then please reconsider how you are approaching that part of your method. If a value is an integer, it will not need quotations.
# Make a class. :white_check_mark:
# Setter and getter for variables as symbols. attr_accessor :white_check_mark:
# Initialize method  and pass each parameter that doesn't have a default value.
# model does not have a default value :white_check_mark:
# wheels does
# current_speed does
# Name a method that outputs values in a sentence :white_check_mark:
# String interpolation :white_check_mark:
# Make a new instance with the expected argument(s)
# Call the method on this new instance
# Let me know if that helps for the first part of the question 
# Second part.
# You will add a couple of methods to your Bike class.
# A method that will add value to speed up
# A method that will subtract value
# You will also call these methods on your new instance


#----------------------------------psudo
#named class bike 
#add accessor current speed
#initialize model wheels with minumum of 2 current speed set to 0
#define bike info with information string
#unsure how to fully complete this got stuck on adding pedel option i'll read on classes in ruby more and request assistence on the topic

# class Bike
# attr_accessor :current_speed
# def initialize(model, wheels=2, current_speed=0) 
#     @model = model
#     @wheels = wheels
#     @current_speed = current_speed
#  end

#  def bike_info
#     "The #{@model} has #{@wheels} and is going #{@current_speed} mph."
#  end

#  tricycle = Bike.new('Tricycle')
#  tricycle.bike_info
#  expected output example: 'the Trek bike has 2 wheels and is going 0 mph'


# -------------------3b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0





