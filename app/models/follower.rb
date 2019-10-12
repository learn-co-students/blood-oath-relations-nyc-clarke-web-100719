
class Follower
  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  def join_cult(cult)
    Blood0ath.new(cult, self)
  end

  def cults
    Blood0ath.all.select {|oath| oath.follower == self}.map { |follower_oath| follower_oath.cult }
  end

  def self.all
    @all
  end

  def self.of_certain_age(age)
    @@all.select {|follower| follower.age >= age}
  end


end