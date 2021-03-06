class Pet
  def initialize(name, age, owner)
    @name = name
    @age = age
    @owner = owner
  end

  def speak
    "#{@name} speaks"
  end

  def to_s
    "#{@name} is a #{@age} year old #{self.class} whose owner is #{@owner}"
  end
end

class Dog < Pet
  def speak
    "#{@name} says woof woof!"
  end
end

class Cat < Pet
  def speak
    "#{@name} says meow."
  end
end

class Bird < Pet
  def speak
    "#{@name} says tweet, tweet"
  end
end

class Frog < Pet
  def speak
    "#{@name} says ribbet"
  end
end

pets = [
  Dog.new('Snoopy',   7,  'Charlie'),
  Cat.new('Felix',    3,  'Cindy'),
  Bird.new('Tweetie', 2,  'John'),
  Frog.new('Kermit',  12, 'Jim Henson')
]

pets.each do |pet|
  puts pet
  puts pet.speak
end
