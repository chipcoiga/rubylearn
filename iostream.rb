io_streams=Array.new
ObjectSpace.each_object(IO){|x| io_streams << x}

p io_streams

p STDOUT.class
p STDOUT.fileno
  
p STDIN.class
p STDIN.fileno

p STDERR.class 
p STDERR.fileno

#wtf it's difficult to understand.

$stdout.puts 'helo'


io = IO.new(1)
p io.class
io.puts 'hello baby'

#open and file
puts IO.sysopen 'test.txt'
content=IO.new(IO.sysopen 'test.txt')
puts content.gets
puts content.pos
puts content.gets
puts content.gets
puts content.gets
puts "\naaaaaa\n"
puts content.read
puts content.read
content.rewind #=> comeback to the start of file
#puts content.read
#content.puts "hahahahaha"
puts content.read

#file class
mode ="r+"
file=File.open("test.txt",mode)
puts file.inspect
puts file.read(2)
puts file.readlines
#puts file.gets
puts "aaaaaaaaaaaaaaaaaa"
puts file.read(15)
#file.puts "call me baby"
file.rewind
buffer = ""
p file.read(23,buffer)#get 23 first charracter and add it into buffer
p buffer
file.close

#file seek
puts ('file seek')
p File.read("test.txt")
File.open("test.txt") do |file|
	file.seek(10, IO::SEEK_SET)#maybe it move the cursor to the "10" charracter, so that when we read, it start from the charracter 11
#it mean I want to jump to 10 charracter
	p file.read(20)
	file.rewind
	p file.read
end

#file readlines
lines = File.readlines("test.txt")
p lines
p lines[2]

