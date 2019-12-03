require 'birthday_list'

describe Birthday_list do
  it { is_expected.to respond_to :add_birthday }
  it { is_expected.to respond_to :display_list }


  describe '#add_birthday' do
    it 'makes a birthday' do
      birthday_double = double :birthday, name: "Jenna", dob: "1993-07-10"
      birthday_class_double = double :birthday_class, new: birthday_double

      birthday_list = Birthday_list.new(birthday_class_double)

      expect(birthday_double).to receive(:name)
      expect(birthday_double).to receive(:dob)
      birthday_list.add_birthday("Jane", "1992-07-10")
    end

    it 'adds the created birthday to the list' do
      birthday_double = double :birthday, name: "Jenna", dob: "1993-07-10"
      birthday_class_double = double :birthday_class, new: birthday_double

      birthday_list = Birthday_list.new(birthday_class_double)

      birthday_list.add_birthday("Jane", "1992-07-10")
      expect(birthday_list.list).to include(birthday_double)
    end
  end
  #
  # NOT A GOOD TEST:
  # describe '#show_list' do
  #   it 'formats the birthdays in to a list' do
  #     birthday_double = double :birthday, name: "Jenna", dob: "1993-07-10"
  #     birthday_class_double = double :birthday_class, new: birthday_double
  #
  #     birthday_list = Birthday_list.new(birthday_class_double)
  #
  #     birthday_list.add_birthday("Jane", "1992-07-10")
    # end
  # end
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
