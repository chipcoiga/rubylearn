my_proc=Proc.new{puts "tweet"}
my_proc.call

my_proc2= lambda {puts "facebook"}
my_proc2.call

class Tweet
	def initialize(user,pass)
		@user=user
		@password=pass
	end
	
	def authenticate?(user, password)
		if (user == "a") && (password =="b")
			return true
		else 
			return false
		end
	end

	def post(success, fail) #post
		if authenticate?(@user, @password)
			#yield
			success.call
		else
			#raise 'Auth error k'
			fail.call
		end
	end
end
success=lambda{puts "success"}
fail=->{puts "fail"}
tweet= Tweet.new('a','b')
puts tweet
#tweet.post {puts "sent!"}
tweet.post(success, fail)
puts "Tweet co #{Tweet.instance_methods.count}"

#lambda to block
tweets=["first","second"]
tweets.each do |t|
	p t
end

tw=["1","2"]
printer = lambda{|tw| puts tw}
tw.each(&printer)# & say that the argument is a proc

#lambda vs block
def func_one
    proc_new = Proc.new {return "123"}
    proc_new.call(1,2)#proc dont care how many argument added
    return "456"
end

def func_two
    lambda_new = lambda {return "123"}
    lambda_new.call#insert "puts" into front of this line to see
#		lambda_new.call(1,2) #=> error, so lambda check the number of argument be for execute the code inside 
    return "456"
end

puts "The result of running func_one is " + func_one#=>123
puts ""
puts "The result of running func_two is " + func_two #=>456

#block
def blocking
	puts "start execute block"
	yield
end
blocking {puts "this is block"}

#prock
def foo(a,b)
	a.call(b)
end
putser = Proc.new {|x|x+1}
puts foo(putser, 3)

#gjgkd
lamb=lambda{|x|x+1}
p=Proc.new{|x| lamb(x)}
puts p.call(4)
