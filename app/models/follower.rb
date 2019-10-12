class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def bloodoaths
        BloodOath.all.select { |bloodoath| bloodoath.follower == self }
    end

    def cults
        bloodoaths.map { |bloodoath| bloodoath.cult }
    end

    def join_cult(cult)
        if cult.minimum_age > self.age
            puts "#{self.name}, you are too young!"
        else 
            BloodOath.new(cult, self)
        end
    end

    def cult_count #returns the number of cults the follower has joined
        cults.count
    end

    def my_cults_slogans
        cults.each { |cult| puts cult.slogan }
    end

    def fellow_cult_members
        fellow_members = self.cults.reduce([]) do |array, cult|
            cult.followers.each do |follower| 
                array << follower unless follower == self  
            end
            array
        end
        fellow_members.uniq
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select { |follower| follower.age >= age}
    end

    def self.sorted_by_activity #returns array sorted by activity
        self.all.sort_by do |follower|
            -follower.cult_count
        end
    end

    def self.most_active
        self.sorted_by_activity[0]
    end

    def self.top_ten
        self.sorted_by_activity[0..9]
    end

end 