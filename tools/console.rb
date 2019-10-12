require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

kanye = Follower.new("Kanye", 50, "I am a God")
jayz = Follower.new("Jayz", 55, "Halla")
rihanna = Follower.new("Rihanna", 35, "Umberrella")

illuminaty = Cult.new("Illuminaty", "New York", 2010, "Join the Snakes")
freemasons = Cult.new("Freemasons", "Everywhere!", 1001, "Join the Lizards")

jayz.join_cult(illuminaty)
illuminaty.recruit_follower(rihanna)
kanye.join_cult(freemasons)

oath = Blood0ath.new(illuminaty, kanye)

kanye.cults


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
