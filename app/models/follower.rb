class Follower
    @@all = []
    attr_accessor :name, :age, :life_motto
    attr_reader :pay_wall
    def initialize(name, age)
        @name = name
        @age = age
        @life_motto = ""
        self.class.all << self
        @pay_wall = false
    end

    def self.all
        @@all
    end

    def join_cult(cult)
        if pay_wall
            return BloodOath.new(self, cult) if self.age >= cult.minimum_age
            puts "Too young to join to cult"
        else
            puts "No minimum_age feature is active need to pay for these"
            BloodOath.new(self, cult)  
        end 
    end

    def cults
        BloodOath.all.select{|bo| bo.follower == self}.map{|bo| bo.cult}
    end

    def self.of_a_certain_age(age) 
        all.select{|follower| follower.age == age}
    end

    def my_cults_slogans
        cults.map{|cult| cult.slogan}
    end
    
    def self.most_active
        all.max_by{|follower| follower.cults.count}
    end

    def self.top_ten
        temp = all.sort_by{|follower| -follower.cults.count}.reject{|follower|follower.cults.count < 1}
        temp[0...9]
    end

    def fellow_cult_members
        return cults.map{|cult| cult.followers}.flatten.uniq.reject{|follower| follower == self} if pay_wall
        "You need to pay for this feature"
    end

    def paying_for_features(value = 0)
        @pay_wall = true if value >= 400
        return "New Features active - Pay_wall down" if @pay_wall
        "These Features are only avalible after playing at least 400"
    end
end