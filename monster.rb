class Monster
    attr_reader :name, :actions               # So we dont have to type the @ sign inside the class
    def initialize(name)
        @name = name
        @actions = {
            scream: 0
        }
    end

    def say(&block)
        print "#{name} says... "
        yield
    end

    def scream(&block)
        actions[:screams] += 1
        print "#{name} screams!"
        yield
    end
end

monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home." }

monster.scream do
    puts "BOO!"
end