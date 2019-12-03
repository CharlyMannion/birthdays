# require 'date'

class Birthday_list

def initialize(birthday_class = Birthday)
  @list = []
  @birthday_class = birthday_class
end

  def add_birthday
    birthday = @birthday_class.new
    birthday.name
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

p birthday_list = Birthday_list.new
