require 'birthday_list'

describe Birthday_list do
  it { is_expected.to respond_to :add_birthday }

end

describe '#initialize' do
  test_birthday = Birthday.new("Jenna", "1993-07-10")

  it 'should set the instance variable name' do
    expect(test_birthday.name).to eq("Jenna")
  end

  it 'should set the instance variable date' do
    expect(test_birthday.dob).to eq("1993-07-10")
  end
end
