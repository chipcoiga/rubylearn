#module Google
module Google
	def search
		puts "deo search duoc"
	end
end
#module ImageUtils
module ImageUntils
	def self.included(base)
		base.extend(ClassMethods)
	end

	def preview
		puts "nay thi preview"
	end

	def transfer(destination)
	end

	def self.play
		puts "game"
	end
	module ClassMethods
		def fetch_facebook(user)
			puts "facebook ne #{user}"
		end
	end
end

#class Image
class Image
	include ImageUntils
	#extend ImageUntils::ClassMethods
	
end

image=Image.new
image.preview
Image.fetch_facebook("Mark")
#ImageUntils.play
#Image.play
#image.play

