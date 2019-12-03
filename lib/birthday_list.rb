require 'date'

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
    @list.each { |bday| puts "#{bday.name}: #{bday.dob}" }
  end

  def check_today
    today = Date.today.iso8601
    # p "puttsing iteration below"
    @list.each { |checker| puts "#{checker.name}" if checker.dob == today }
  end

end


class Birthday
  attr_accessor :name, :dob

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
#
# birthday_list = Birthday_list.new
# birthday_list.list
# birthday_list.add_birthday("Charly", "2019-12-03")
# birthday_list.list
# birthday_list.add_birthday("Jenna", "1993-07-10")
# birthday_list.list
# # p birthday_list.display_list
# p birthday_list.check_today
