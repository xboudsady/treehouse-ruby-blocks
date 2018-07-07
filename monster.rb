class Monster
    attr_reader :name               # So we dont have to type the @ sign inside the class
    def initialize(name)
        @name = name
    end

    def say(&block)
        print "#{name} says... "
        yield
    end
end

monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home." }