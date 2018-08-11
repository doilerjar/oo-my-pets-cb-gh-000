require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :name
  
  attr_reader :species
  
  @@all = []
  
  def initialize(species="")
    @species = species  
    @pets = []
    
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

  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    binding.pry
    pets[:fishes] << fish
  end 
end