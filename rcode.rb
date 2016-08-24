require 'date'

class Person

	attr_reader :first_name, :surname, :dob, :fullname

	def initialize(name, sname, dob)
	@dob = dob
	@first_name = name.capitalize
	@surname = sname.capitalize
	@fullname = @first_name + " " + @surname
	end

	def date
		Date.parse(@dob).strftime("%Y-%d-%m")
	end
end
