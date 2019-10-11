class Follower
    @@all = []
    attr_accessor :name, :age, :life_motto

    def initialize(name, age)
        @name = name
        @age = age
        @life_motto = ""
        self.class.all << self
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

end