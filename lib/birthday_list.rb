# require 'date'

class Birthday_list

attr_accessor :list

def initialize(birthday_class = Birthday)
  @list = []
  @birthday_class = birthday_class
end

  def add_birthday(name, dob)
    birthday = @birthday_class.new(name, dob)
    birthday.name
    birthday.dob
    @list << birthday
  end

  def display_list
    "Jane: 1992-07-10"
  end

end


class Birthday
  attr_accessor :name, :dob

  def initialize(name, dob)
    @name = name
    @dob = dob

    # def do_whatever
    #   puts "doing whatever"
    # end
  end

end

# irb:
# require './lib/birthday_list.rb'

# p date = Date.today
# p date.iso8601
# p birthday_test1 = Birthday.new("Jenna", "1993-07-10")
# p birthday_test1.name
# p birthday_test1.date

# p birthday_list = Birthday_list.new
# p birthday_list.list
# p birthday_list.add_birthday("Charly", "1993-08-02")
# p birthday_list.list
# p birthday_list.add_birthday("Jenna", "1993-07-10")
# p birthday_list.list
# p birthday_list.show_list
