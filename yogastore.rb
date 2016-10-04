@shopping_cart = []

@products = [
  { reference_number: 1231, name: "Super Lite Mat", price: 10 },
  { reference_number: 1232, name: "Power Mat", price: 20 },
  { reference_number: 1233, name: "Block", price: 30 },
  { reference_number: 1234, name: "Meditation cushion", price: 30 },
  { reference_number: 1235, name: "The best T-shirt", price: 200 },
  { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 1238, name: "Light On Yoga", price: 10 }
]

def print_divider
  puts "*" * 40
end

def shoppingcart
  puts "Our list of products \n"
  print_divider
  @products.each do |product, price|
  puts "#{product[:reference_number]} - #{product[:name]} for #{product[:price]} Euro"
end
print "What product would you like to add to your shopping cart?"
item = gets.chomp.to_i
end

def checkout


end
shoppingcart



loop do
  puts "\n"
  print_divider

  puts "Got all products you need? (Y/N)"
  answer = gets.chomp.upcase

  if answer == 'N'
    shoppingcart
  elsif answer == 'Y'
    puts "Let's start cooking!"
    break
  else
    puts "That's not a valid input. Try again."
  end
end
