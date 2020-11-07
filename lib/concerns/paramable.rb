module Paramable


  def to_param
    name.downcase.gsub(' ', '-')
        # takes name and makes all letters downcase, then replaces any instances of space with a -
  end

end



# The "your-name" part of the above URL might be referred to as a slug. 
# Another term for this section of a URL is "parameter" or "param". One common task you'll 
# undertake as a web developer is to take a Ruby object, such as an instance of a User class, 
# and make a URL out of it. For example, let's say we have a database full of instances of a User class. 
# When an individual user signs in to our app, we might want to show them their very own profile page. 
# To do so, we would have to write a method that takes their name and turns it into a slug or parameter
# that could be tacked onto a URL.

# Don't worry too much about this use-case for now. We'll be learning much, much more about 
# connecting our Ruby programs to the web later on. For now, just understand the general purpose 
# of having a method like the to_param method.