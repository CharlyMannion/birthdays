require 'date'

class Birthday_list

  @list = []

  def add_birthday
  end

end


class Birthday
  attr_accessor 'name', 'dob'

  def initialize(name, dob)
    @name = name
    @dob = dob
  end

end

# irb:
# require './lib/birthday_list.rb'

# p date = Date.today
# p date.iso8601
# p birthday_test1 = Birthday.new("Jenna", "1993-07-10")
# p birthday_test1.name
# p birthday_test1.date
