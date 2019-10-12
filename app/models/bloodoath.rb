
class Blood0ath
  attr_accessor :cult, :follower

  @@all = []

  def initialize(cult, follower)
      @cult = cult
      @follower = follower
      @date = Time.now

      @@all << self
  end

  def initiation_date
    @date
  end

  def self.all
    @@all
  end

  def all_data
    @@all
  end
end