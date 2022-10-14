class Person

  def initialize(person_attributes)
    person_attributes.each do |key, value|
      self.class.attr_accessor(key) # because attr_accessor is a class method.. we have to access our CLASS in order to set values for this.. hence the .class method attached to the self
      self.send("#{key}=", value) # here we are creating the method and setting the method equal to the key name, with the value equal to the value
    end
  end
end
