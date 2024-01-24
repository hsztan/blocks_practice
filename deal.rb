# def deal(num = 1)
#   faces = ["Jack", "Queen", "King", "Ace"]
#   suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
#   if block_given?
#     num.times do
#       random_face = faces.sample
#       random_suit = suits.sample
#       score = yield(random_face, random_suit)
#       puts "You scored a #{score}!"
#     end
#   else
#     puts "No deal!"
#   end
# end


# def n_times(num)
#   1.upto(num) { |n| yield n }
# end

def progress
  0.step(100, 10) { |n| yield(n)}
end

progress { |percent| puts percent }

# n_times(5) do |n|
#   puts "#{n} situps"
#   puts "#{n} pushups"
#   puts "#{n} chinups"
# end

# deal do |face, suit| 
#   puts "Dealt a #{face} of #{suit}" 
#   face.length + suit.length
# end