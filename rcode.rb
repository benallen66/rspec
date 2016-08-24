require 'date'

class Person

	attr_reader :first_name, :surname, :dob, :fullname

	def initialize(name, sname, dob)
	@dob = dob
	@first_name = name.capitalize
	@surname = sname.capitalize
	@fullname = @first_name + " " + @surname
	@emails = []
	@numbers = []
	end

	def date
		Date.parse(@dob).strftime("%Y-%d-%m")
	end


	def emails
		@emails
	end

	def add_emails(email)
		@emails << (email)
	end

	def numbers
		@numbers
	end

	def add_numbers(number)
		@numbers << (number)
	end
end
