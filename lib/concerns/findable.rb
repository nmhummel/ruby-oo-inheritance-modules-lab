
module Findable


    def find_by_name(name)
        self.all.detect{|thing| thing.name == name}  
        # looking for an instance, returns first instance that matches name argument/instance
    end

end

# def find_by_name(name)
#     @@all.detect{|thing| thing.name == name}  
#     # looking for an instance, returns first instance that matches name argument/instance
# end

# JOMA: .find_by_name is already considered a Class Method, so when you use self, you're already referring to the Class that it's inside of. 
# So you don't need to specify self.class, just using self should be enough

#  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# Is there a way to reference the collection of all of the instances of a class, 
# without specifically referencing class variables that are only defined in certain classes?