
class Cult

  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  @@followers = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self
  end

  def followers
    Blood0ath.all.select {|oath| oath.cult == self}
  end


  def recruit_follower(follower)
      Blood0ath.new(self, follower)
      # @@followers << follower
  end

  def cult_population
    followers.length
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|cult| cult.name == name}
  end

  def self.find_by_location(location)
    @@all.select {|cult| cult.location == location}
  end

  def self.find_by_founding_year(founding_year)
    @@all.select {|cult| cult.founding_year == founding_year}
  end
end