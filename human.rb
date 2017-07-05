class Human
    attr_accessor :health 
    def initialize 
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
    end
    def attack(animal)
        if animal.class.ancestors.include? Human
            animal.health -= 50
            puts animal.health
        else 
            puts "Cannot attack animals"    
        end         
    end     
end     
class Dog
    def initialize 
    @strength = 3
    @stealth = 3
    @intelligence = 3
    @health = 100
    end
end   

human1 = Human.new
human2 = Human.new
human1.attack(human2) 
dog = Dog.new
human1.attack(dog)          