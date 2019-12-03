require 'birthday_list'

describe Birthday_list do
  it { is_expected.to respond_to :add_birthday }

  describe '#add_birthday' do
    it 'makes a birthday' do
      birthday_double = double :birthday, name: "Jenna", date: "1993-07-10"
      birthday_class_double = double :birthday_class, new: birthday_double

      birthday_list = Birthday_list.new(birthday_class_double)

      expect(birthday_double).to receive(:name)
      birthday_list.add_birthday("Jane", "1992-07-10")
    end
  end
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
