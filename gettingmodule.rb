#define Perimeter module
module Perimeter
	class Array
		def initialize
			@size = 400
		end
	end
end

our_array = Perimeter::Array.new
ruby_array = Array.new

#to know about: p/puts/to_s/inspect/print
p our_array
p ruby_array
puts our_array
print our_array
puts our_array

#troll lv max :v
puts "nha toi".split("a")

#module: constant lookup
module RubyMonk
	module Parser
		class TextParser
			def self.parser(str)
				str.split(" ")
			end
		end
	end
end

puts RubyMonk::Parser::TextParser.parser("nha toi co mot con dog")