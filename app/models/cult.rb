class Cult

    attr_accessor :name, :location, :slogan, :followers, :year
    @@all =[]

    def self.all
        @@all
    end

    def initialize(name,location)
        @name = name
        @location = location
        @slogan = ""
        @year = rand(1990) + 1
        self.class.all << self
    end

    def recruit_follower(follower)
        BloodOath.new(follower,self)
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

end