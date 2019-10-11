require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


follower1 = Follower.new("Jack", 24, "never say never")
follower2 = Follower.new("Jeff", 90, "yes and")
follower3 = Follower.new("Bob", 15, "how goes it?")
follower4 = Follower.new("Jane", 30, "yep")


cult1 = Cult.new("cultone", "NY", 1980, "yo")
cult2 = Cult.new("culttwo", "LA", 1970, "hi")
cult3 = Cult.new("cultthree", "NY", 1990, "no")

bloodoath1 = BloodOath.new(cult1, follower1, "_1982-10-10")
bloodoath2 = BloodOath.new(cult2, follower2, "_1994-10-30")
bloodoath3 = BloodOath.new(cult3, follower3, "_2007-01-01")
bloodoath4 = BloodOath.new(cult3, follower1, "_1995-10-30")
bloodoath5 = BloodOath.new(cult1, follower2, "_1994-10-30")
bloodoath6 = BloodOath.new(cult1, follower3, "_1994-10-30")
bloodoath7 = BloodOath.new(cult2, follower1, "_1994-10-29")
bloodoath8 = BloodOath.new(cult1, follower4, "_2006-11-12")
bloodoath9 = BloodOath.new(cult2, follower4, "_1994-10-30")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
