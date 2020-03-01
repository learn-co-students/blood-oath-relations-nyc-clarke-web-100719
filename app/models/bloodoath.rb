require 'date'

class BloodOath
    attr_accessor :init_date, :cult, :follower

    @@all = []

    def initialize(cult, follower, init_date=Date.today)
        @cult = cult
        @follower = follower
        @init_date = init_date
        @@all << self
    end

    def self.all
        @@all
    end

end