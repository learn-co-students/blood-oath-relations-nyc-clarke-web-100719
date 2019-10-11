require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Illuminati", "New York", 1984, "We are rich")
cult2 = Cult.new("Manson Family", "New York", 1960, "We are bad")
cult3 = Cult.new("asdf Family", "California", 19880, "We are bad")
follower2 = Follower.new("Jimmy", 25, "Dab on the haters")
follower1 = Follower.new("Barbara", 26, "I know a lot about cults")
follower3 = Follower.new("Old Man", 80, "wack")
follower4 = Follower.new("Young Man", 10, "meh")
follower5 = Follower.new("f Man", 1, "s")
follower6 = Follower.new("W Man", 2, "vjdfsjf")
follower7 = Follower.new("eird Man", 3, "vjsdfjf")
follower8 = Follower.new("rd Man", 4, "vjdsfjf")
follower9 = Follower.new("d Man", 5, "vjdfsjf")
follower10 = Follower.new(" Man", 6, "vjsdfjf")
follower11 = Follower.new("Man", 7, "vjsdfjf")



bloodoath1 = BloodOath.new(cult1, follower1, "1984-11-09")
bloodoath2 = BloodOath.new(cult1, follower2, "1984-11-09")

cult2.recruit_follower(follower1)
follower1.join_cult(cult3)
follower2.join_cult(cult2)
follower3.join_cult(cult3)
cult1.recruit_follower(follower4)
cult1.recruit_follower(follower5)
cult1.recruit_follower(follower6)
cult1.recruit_follower(follower7)
cult1.recruit_follower(follower8)
cult1.recruit_follower(follower9)
cult1.recruit_follower(follower11)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
