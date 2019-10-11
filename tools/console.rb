require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
follower1 = Follower.new("Peter", 18)
follower2 = Follower.new("Bira", 180)

cult1 = Cult.new("flatiron","NY")
cult2 = Cult.new("Cup","CA")
cult3 = Cult.new("Loop","NJ")

bo1 = BloodOath.new(follower1,cult1)
bo2 = BloodOath.new(follower1,cult3)
bo3 = BloodOath.new(follower2,cult2)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
