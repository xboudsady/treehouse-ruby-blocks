def get_name
    print "Enter your name: "
    name = gets.chomp
    yield name                             # yield keyword jumps out of a block function, and returns the variable value
end

get_name do |name|                          # catches the variable name
    print "That's a cool name, ! #{name}"
end