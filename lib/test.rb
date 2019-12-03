class A
    def generate
        B.new
    end
end

class B
    def declare
        puts "I exist!"
    end
end

# test = A.new
# var  = test.generate
# var.declare

A.new.generate.declare # => I exist!
