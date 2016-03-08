#implicit to explicit
def caculation(a,b,&operation)
	operation.call(a,b)
end
puts caculation(5,6){|a,b|a+b}

#explicit to implicit
class Foo
	def initialize
		@a=5
	end
end
p Foo.new
puts Foo.new.inspect

