require 'date'
class Person

	attr_accessor :dob,:first_name,:surname
	attr_reader :emails,:numbers

	def initialize(name, sname, dob)
	@dob = dob
	@first_name = name.capitalize
	@surname = sname.capitalize
	@emails = []
	@numbers = []
	end


	def date
		Date.parse(@dob).strftime("%Y-%d-%m")
	end

	def add_emails(email)
		@emails.push(email)
	end

	def add_numbers(phone)
		@numbers.push(phone)
	end

	def remove_emails(email_index)
		@emails.delete_at(email_index) 
	end
end