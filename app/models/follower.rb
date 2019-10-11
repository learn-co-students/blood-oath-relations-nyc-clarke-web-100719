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
        BloodOath.new(self, cult)
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
        cults.map{|cult| cult.followers}.flatten.uniq
    end

end