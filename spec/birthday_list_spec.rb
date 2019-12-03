require 'birthday_list'

describe Birthday_list do
  it { is_expected.to respond_to :add_birthday }

end

describe '#initialize' do
  it 'should set the instance variable name' do
    test_birthday = Birthday.new("Jenna")
    expect(test_birthday.name).to eq("Jenna")
  end
end
