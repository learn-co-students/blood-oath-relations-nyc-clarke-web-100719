require 'date'

class BloodOath
    attr_accessor :initiation_date, :cult, :follower

    @@all = []

    def initialize(cult, follower, initiation_date=DateTime.now.strftime("%F"))
        @cult = cult
        @follower = follower
        @initiation_date = initiation_date
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        self.all[0]
    end

end