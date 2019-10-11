class BloodOath

    attr_accessor :follower, :cult
    attr_reader :date
    @@all = []

    def self.all
        @@all
    end

    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        @date = Time.now.strftime("%Y/%m/%d")
        self.class.all << self
    end

    def initiation_date
        self.date
    end


end