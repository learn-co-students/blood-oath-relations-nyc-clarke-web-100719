class Follower
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        BloodOath.all.select {|cult| cult.follower == self}
    end

    def join_cult(name, location, founding_year, slogan, initation_date)
        cult = Cult.new(name, location, founding_year, slogan)
        new_cult = BloodOath.new(self, cult, initiation_date)
        cults << new_cult
    end

    def self.of_a_certain_age(age)
        @@all.select { |follower| follower.age >= age} 
    end

    def my_cults_slogans
        cults.each do |bloodoath|
            p bloodoath.cult.slogan
        end
    end

    def self.most_active
        hash = Hash.new(0)
        BloodOath.all.each { |bloodoath_instance| hash[bloodoath_instance.follower] += 1}
        hash.key(hash.values.max)
    end

    def self.top_ten
        BloodOath.all.map {|bloodoath_instance| bloodoath_instance.follower}
    end
end