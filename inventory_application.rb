Inventory_item = {
     "Asparagus" => 3.29,
     "Carrots" => 2.99,
     "Squash" => 2.59
   }

Inventory_item.each do |name, price|
puts "#{name}: $#{price}"
end



keylist = []
price_hash = { }

input = ""
veggie = ""
price = 0

print "Enter vegetable, price; or just ENTER to quit: "
input = gets.chomp
while input != "" do
(veggie, price) = input.split(",")
price = price.to_f

price_hash[veggie] = price

print "Enter vegetable, price; or just ENTER to quit: "
input = gets.chomp
end

puts "Here are the vegetable contents:"
price_hash.each do |key,value|
puts "#{key} are this much #{value}."
end

puts "Here are the vegetable contents, sorted into order:"
keylist = price_hash.keys.sort
keylist.each do |key|
puts "#{key} is #{price_hash[key]}."
end
