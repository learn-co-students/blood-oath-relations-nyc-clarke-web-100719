require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Illuminati", "New York", 1984, "We are rich")
cult2 = Cult.new("Manson Family", "California", 1960, "We are bad")
cult3 = Cult.new("asdf Family", "California", 19880, "We are bad")
follower1 = Follower.new("Jimmy", 25, "Dab on the haters")
follower2 = Follower.new("Barbara", 26, "I know a lot about cults")

bloodoath1 = BloodOath.new(cult1, follower1, "1984-11-09")
bloodoath2 = BloodOath.new(cult1, follower2, "1984-11-09")

cult2.recruit_follower(follower1)
cult2.recruit_follower(follower2)
cult2.recruit_follower(follower1)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
