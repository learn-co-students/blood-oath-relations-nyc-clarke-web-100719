class BloodOath
    attr_reader :cult, :follower, :initiation_date
    @@all = []
    def initialize(cult, follower, initiation_date)
        @initiation_date = initiation_date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        oath_array = @@all.map { |bloodoath| bloodoath}
        oath_array.first
    end
end