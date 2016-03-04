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

#or another way
def find_frequency(sentence, word)
  sentence.downcase.split.count(word.downcase)
end

#problem 4: sort the words in a given sentence
def string_sort(string)
	string.split(' ').sort{|x,y| x.length <=> y.length}.join(' ')
end
puts string_sort("doi la phu cmn du")

#problem 5: return random elements from an array
def random_select(array, n)
  result = Array.new
  n.times do 
    result << array[rand(array.length)]
  end
  return result
end

#problem 6: hiring programmers - Boolean Expressions in ruby
is_an_experienced_programmer =
  (candidate.years_of_experience >= 2 || candidate.github_points >= 500) && !(candidate.age < 15 || candidate.applied_recently?) && (candidate.languages_worked_with.include? 'Ruby')

#problem 7: Palindromes
def palindrome?(sentence)
  temp=sentence.downcase.gsub(" ","")
  temp == temp.reverse
end

#problem 8: compute sum of cubes for given range
#this problem I use the solution bacause I don' understand what it mean.
def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, x| sum += (x*x*x) }
end

#problem 9: find non-duplicate values in an Array
def non_duplicated_values(values)
  values.each do |num|
    values.delete(num) if values.count(num)>=2
  end
  return values
end
#or 
def non_duplicated_values(values)
  values.find_all { |x| values.count(x) == 1 }
end

#problem 10: Check if all element in an array are Fixnum
def array_of_fixnums?(array)
  array.all? {|x| x.is_a? Fixnum}
end

#problem 11: Kaprekar's number

