#problem 1: build a caculator to add and sub two number
class Calculator
  def add(a, b)
   a+b
  end

  def subtract(a, b)
   a-b
  end
end

#problem 2: Find length of string in array
def length_finder(input_array)
  result=Array.new
  input_array.each do |string|
    result << string.length
  end
  return result
end

#or
def length_finder(input_array)
	input_array.collect{|string| string.length}
	#collect = map
end

#problem 3: find the frequency of a string in a sentence
def find_frequency(sentence, word)
  count = 0
  wordarray=sentence.downcase.split(" ")
  wordarray.each do |wordcurrent|
    count = (count +1) if word.downcase == wordcurrent
  end
  return count
end