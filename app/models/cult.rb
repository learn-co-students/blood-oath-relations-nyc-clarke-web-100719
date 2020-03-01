class Cult

    attr_accessor :name, :location, :slogan, :followers, :year
    attr_reader :pay_wall
    @@all =[]

    def self.all
        @@all
    end

    def initialize(name,location)
        @name = name
        @location = location
        @slogan = ""
        @pay_wall = false
        @minimum_age = rand(32)+18
        @year = rand(1990) + 1
        self.class.all << self
    end

    def recruit_follower(follower)
        if pay_wall
            return BloodOath.new(follower,self) if follower.age >= minimum_age
            print "Person does not meet minimum age requirement: #{minimum_age} \nYour age is #{follower.age}"
        else
            puts "if you want to add minimum_age feature you will need to Pay for these"
            BloodOath.new(follower,self)
        end
    end

    def cult_population
        followers.length
    end

    def self.find_by_name(name)
        self.all.each{|cult|
            if cult.name == name
                return cult
            end
        }
        return nil
    end   

    def followers
        temp = BloodOath.all.select{ |bo| bo.cult == self}
        temp.map{|bo| bo.follower}
    end

    def self.find_by_location(location)
        self.all.select{|cult| cult.location == location }
    end

    def self.find_by_founding_year(year)
        all.select{|cult| cult.year == year}
    end

    def founding_year
        @year
    end

    def average_age
        ar_ages = followers.map{|follower| follower.age}
        ages_sum = 0.0
        ar_ages.each{|age| ages_sum += age }
        ages_sum/ar_ages.length
    end

    def my_followers_mottos
        followers.map{|follower| follower.life_motto}
    end

    def self.least_popular
        least_followers = nil
        least_like_cult = nil
        all.each{|cult| 
        if !least_followers
            least_followers = cult.cult_population
            least_like_cult = cult
        elsif cult.cult_population <= least_followers
            least_followers = cult.cult_population
            least_like_cult = cult
        end
        }
        least_like_cult
    end

    def self.most_common_location
        temp = self.all.map{|cult| cult.location}
        temp.max_by{|i| temp.count(i)}
    end

    def paying_for_features(value = 0)
        @pay_wall = true if value >= 800
        return "New Features active - Pay_wall down" if @pay_wall
        "These Features are only avalible after playing at least 800"
    end

    def minimum_age
        return @minimum_age if pay_wall
        puts "These Features are only avalible after playing at least 800"
    end

end