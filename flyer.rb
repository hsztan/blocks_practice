class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []
1.upto(5) do |n|
  flyers << Flyer.new("Flyer #{n}", "flyer#{n}.example.com", n * 1000)
end

total_miles =  flyers.reduce(0) {|sum, flyer| sum += flyer.miles_flown}

puts "Total miles flown: #{total_miles}"