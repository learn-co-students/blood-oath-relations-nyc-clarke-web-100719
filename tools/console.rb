require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
follower1 = Follower.new("Peter", 18)
follower2 = Follower.new("Bira", 188)
follower3 = Follower.new("Alex", 35)
follower4 = Follower.new("Bell", 10)
follower5 = Follower.new("Carl", 58)
follower6 = Follower.new("Devi", 19)
follower7 = Follower.new("El", 21)
follower8 = Follower.new("Fer", 80)
follower9 = Follower.new("Xavier", 118)
follower10 = Follower.new("Zu", 1830)
follower11 = Follower.new("Qo", 29)
follower12 = Follower.new("Moe", 8)
follower14 = Follower.new("Greg", 1000)

cult1 = Cult.new("Flatiron","NY")
cult2 = Cult.new("Cup","NJ")
cult3 = Cult.new("Loop","NJ")
cult4 = Cult.new("Land","TX")
cult5 = Cult.new("Iluminaty","NJ")
cult6 = Cult.new("Lip","CA")
cult7 = Cult.new("Crate","NY")
cult8 = Cult.new("Map","NJ")
cult9 = Cult.new("Gp","CA")
cult10 = Cult.new("Cold","CA")
cult11 = Cult.new("Out","NY")

bo1 = BloodOath.new(follower2,cult1)
bo2 = BloodOath.new(follower2,cult2)
bo3 = BloodOath.new(follower2,cult3)
bo4 = BloodOath.new(follower1,cult11)
bo5 = BloodOath.new(follower1,cult9)
bo6 = BloodOath.new(follower3,cult5)
bo7 = BloodOath.new(follower3,cult3)
bo8 = BloodOath.new(follower2,cult2)
bo9 = BloodOath.new(follower2,cult1)
bo10 = BloodOath.new(follower6,cult1)
bo11 = BloodOath.new(follower7,cult11)
bo12= BloodOath.new(follower8,cult7)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
