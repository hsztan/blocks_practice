require "thread"

def h1
  return "<h1>#{ yield }</h1>"
end

def h2
  return "<h1>" + yield + "</h2>"
end

# def tag(element)
#   puts "<#{element}>#{yield}</#{element}>"
# end

def tag(element)
  print "<#{element}>"
  print yield
  print "</#{element}>"
end

# tag(:ul) do
#   tag(:li) { "It sparkles!"}
#   tag(:li) { "It shines!"}
#   tag(:li) { "It mesmerizes!"}
# end

def with_debugging
  puts "Got Here"
  puts "Result was #{yield}"
end

# with_debugging do
#   magic_number = (23 - Time.now.hour) * Math::PI
# end

def with_expectation(expected)
  puts "Running test..."
  result = yield
  if result == expected
    puts "Passed."
  else
    puts "Expected #{expected}, but got #{result}"
  end
end

# with_expectation(4) { 2 + 2 }

# with_expectation("Henry") { "Hen" + "y" }

# require "benchmark"

# time = Benchmark.realtime do
#   concurrent_fibonacci(45)
# end

# p time