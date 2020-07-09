def time
  Time.new.strftime("%I:%M:%S")
end

def say_hello(name, health = 100)
  "I'm #{name.capitalize} with a health of #{health} as of #{time}."
end

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)

name1 = "larry"
puts say_hello(name1).object_id