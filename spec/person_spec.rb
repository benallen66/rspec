require 'help'

describe "Person class - entry in phonebook" do
  it "should store and return personal information" do
 
    person = Person.new("ben", "allen", "2 Dec 1982")
	expect(person.date.to_s).to eq "1982-02-12"
    expect(person.first_name).to eq "Ben"
    expect(person.surname).to eq "Allen"
    expect(person.fullname).to eq "Ben Allen"
  end	
end

describe "Emails method - entry in email"do
	it "should store new emails that are added"do
  
	person = Person.new("ben", "allen", "2 Dec 1982")
	person.add_emails("benallen66@hotmail.com")
	person.add_emails("benjaminallen1982@gmail.com")
	expect(person.emails).to eq ["benallen66@hotmail.com", "benjaminallen1982@gmail.com"]
  end
end

describe "Phone numbers method - entry in numbers"do
	it "should store new phone numbers that are added"do

	person = Person.new("ben", "allen", "2 Dec 1982")
	person.add_numbers("01277373641")
	person.add_numbers("07939500338")
	expect(person.numbers).to eq ["01277373641","07939500338"]
  end
end