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
