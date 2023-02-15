# Learning Goals
# Practice defining instance methods on a class
# Practice defining instance methods that use the self keyword
# Learn about monkey patching

#introduction

# In this lab, you'll be adding a few instance methods to Ruby's String class. We generally want to avoid altering built-in classes (especially if we are working with other people), but in this case, we're not overwriting any methods, and it's a good exercise in OO programming. The practice of adding methods to or altering Ruby's built-in classes is called monkey patching.

# The String class is just like any other class that we might define, such as a Dog class or a Person class. The String class, however, is native to, or included in, Ruby. So, we can add or change methods in the String class just like we would in any of the classes that we define ourselves.

Monkey Patching
Monkey patching is the practice of adding methods to or altering Ruby's built-in classes.

# Monkey patching is dangerous, and should almost never be used in real application. What if, for example, you decide to monkey patch Ruby's String class to produce a quick-fix that shortens a certain section of code in your program? Then, months later, you run into major bugs as a result, or some of your collaborators don't know about your monkey patch and develop bugs of their own that they don't know the origin of? For reasons like these, monkey patching should be considered very, very carefully. We're going to do it today, just for fun (and to learn about self), but you want to avoid doing it when working on your own programs.

# To see what monkey patching looks like in action, open up IRB. Let's try to call a method on a string that definitely doesn't exist in Ruby:

"hello".report_on_self
# NoMethodError (undefined method `report_on_self' for "hello":String)

# We can monkey patch the String class to add an instance method, just like we'd add an instance method to one of our own custom classes. Run this in IRB as well:

class string
    def report_on_self
        "Self is:#{self}"
        
    end
    
end

# Then use the #report_on_self method on any string:
"hello".report_on_self
# => "Self is: hello"

"this string".report_on_self
# => "Self is: this string"

























