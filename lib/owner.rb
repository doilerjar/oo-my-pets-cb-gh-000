class Owner
  # code goes here
  attr_accessor :pets, :name
  
  attr_reader :species
  
  @@all = []
  
  def initialize(species="")
    @species = species  
    @@all << self
  end
  
  def pets
    @pets = { :fishes=>[], :dogs=>[], :cats=>[] }
    @pets
  end 
  
  def self.all
    @@all
  end 
  
  def self.count
    @@all.length
  end 
  
  def self.reset_all
    @@all = []
  end
  
  def 
  
  def say_species
    @species
  end
  
  
end