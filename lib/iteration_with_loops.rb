require "pry"

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays

  #create an empty arr to store all the low weather data
  weather_arr = []

  #loop the outter array
  row_index = 0
  while row_index < src.length do
    low_tem = 1000
    elem_index = 0 
    while elem_index < src[row_index].length do
      if src[row_index][elem_index] < low_tem
        low_tem = src[row_index][elem_index]
      end
      elem_index +=1
    end
    weather_arr << low_tem
    row_index +=1
  end
  weather_arr
end