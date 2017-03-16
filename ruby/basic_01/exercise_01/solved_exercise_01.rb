# Create a method to print out the text "Hello World!"
def print_hello_world
    puts 'Hello World!'
end

# Create a method to receive a string parameter and print out the text "Hello World {name}". Replace {name} for the parameter value. (String Concatenation)
# The method cannot accept an empty name. (String method **length**)
# The name must be bigger than 3 characters.
# The name must be lesser than 15 characters.

def print_hello_world(text)
    if !text.empty? && text.length > 3 && text.length < 15
        puts 'Hello World ' + text
    else
        puts 'Your text is empty or lesser than 3 characters or bigger than 15 characters'
    end
end
