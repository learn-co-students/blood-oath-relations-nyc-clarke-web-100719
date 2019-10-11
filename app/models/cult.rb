class Cult
    attr_reader :name, :location, :founding_year, :slogan
    @@all = []
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def followers
        BloodOath.all.select {|follower| follower.cult == self}
    end

    def recruit_follower(name, age, life_motto, initiation_date)
        new_follower = Follower.new(name, age, life_motto)
        followers << BloodOath.new(self, new_follower, initiation_date)
    end

    def cult_population
        followers.length
    end

        
    def self.find_by_name(name)
        @@all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        @@all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(founding_year)
        @@all.find {|cult| cult.founding_year == founding_year}
    end

    def sum_of_ages
        total = 0
        followers.each do |bloodoath_instance| 
            total += bloodoath_instance.follower.age    
        end
        total
    end

    def average_age
        avg = (sum_of_ages/cult_population.to_f)
    end

    def my_followers_motto
        followers.each do |bloodoath_instance|
            p bloodoath_instance.follower.life_motto
        end
    end
    
    def self.least_popular
        hash = Hash.new(0)
        BloodOath.all.each { |bloodoath_instance| hash[bloodoath_instance.cult] += 1}
        hash.key(hash.values.min)
    end

    def self.most_common_location
        hash = Hash.new(0)
        BloodOath.all.each { |bloodoath_instance| hash[bloodoath_instance.cult.location] += 1}
        hash.key(hash.values.max)
    end
end