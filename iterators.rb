cards = ["Jack", "Queen", "King", "Ace", "Joker"]

# cards.each { |card| puts card.upcase}

# cards.shuffle.each { |card| puts "#{card.upcase} - #{card.size}"}

scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }

# desserts.each do |dessert, value|
#   puts "$#{value * 2} for a cup of #{dessert}."
# end

obj = desserts.detect { |flavor, value| value > 1.00}

greater, smaller = desserts.partition { |o, v| v > 1.00 }

