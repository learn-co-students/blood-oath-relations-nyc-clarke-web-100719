class Cult
    attr_accessor :name, :location, :founding_year, :slogan, :minimum_age

    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age=18)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age
        self.class.all << self
    end

    def recruit_follower(follower)
        if follower.age < self.minimum_age
            puts "#{follower.name}, you are too young!"
        else 
            BloodOath.new(self, follower)
        end
    end

    def bloodoaths
        BloodOath.all.select { |bloodoath| bloodoath.cult == self }
    end

    def followers
        bloodoaths.map { |bloodoath| bloodoath.follower }
    end

    def cult_population
        bloodoaths.count
    end

    def average_age
        total_age = 0
        followers.each do |follower|
            total_age += follower.age
        end
        total_age.to_f / cult_population
    end

    def my_followers_mottos
        followers.each do |follower|
            puts follower.life_motto
        end
    end

    def self.find_by_name(name)
        self.all.find { |cult| cult.name == name }
    end

    def self.find_by_location(location)
        self.all.select { |cult| cult.location == location }
    end

    def self.locations
        locations = self.all.map { |cult| cult.location }
    end

    def self.find_by_founding_year(year)
        self.all.select { |cult| cult.founding_year == year }
    end

    def self.all
        @@all
    end

    def self.least_popular
        self.all.min_by { |cult| cult.cult_population }
    end

    def self.most_common_location
        self.locations.max_by { |location| locations.count(location) }
    end
end