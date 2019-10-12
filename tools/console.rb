require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Illuminati", "New York", 1984, "We are rich", 5)
cult2 = Cult.new("Manson Family", "California", 1960, "We are bad")
cult3 = Cult.new("Culty Family", "New York", 1977, "We are good")
follower2 = Follower.new("Jimmy", 25, "Dab on the haters")
follower1 = Follower.new("Barbara", 26, "I know a lot about cults")
follower3 = Follower.new("Old Man", 80, "I like being old")
follower4 = Follower.new("Young Child", 10, "meh")
follower5 = Follower.new("1 Boy", 1, "Wah")
follower6 = Follower.new("2 Boy", 2, "Waah")
follower7 = Follower.new("3 Boy", 3, "Waaah")
follower8 = Follower.new("4 Boy", 4, "Waaaah")
follower9 = Follower.new("5 Boy", 5, "Waaaaah")
follower10 = Follower.new("6 Boy", 6, "Waaaaaah")
follower11 = Follower.new("7 Boy", 7, "Waaaaaaah")



bloodoath1 = BloodOath.new(cult1, follower1, "1984-11-09") #joins
bloodoath2 = BloodOath.new(cult1, follower2, "1984-11-09") #joins

cult2.recruit_follower(follower1) #joins
follower1.join_cult(cult3) #joins
follower2.join_cult(cult2) #joins
cult2.recruit_follower(follower4) #fail
cult2.recruit_follower(follower5) #fail
cult1.recruit_follower(follower6) #fail
cult1.recruit_follower(follower7) #fail
cult1.recruit_follower(follower8) #fail
cult1.recruit_follower(follower9) #pass
cult1.recruit_follower(follower11) #pass


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
