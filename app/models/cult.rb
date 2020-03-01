class Cult
    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
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

    def self.list_of_locations
        locations = self.all.map { |cult| cult.location}
        locations.uniq
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
        self.list_of_locations.max_by { |location| self.find_by_location(location).count }
    end
end