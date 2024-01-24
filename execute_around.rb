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

# tag(:h1) { "Breaking News!" }
# tag(:h2) { "Massive Ruby Discovered" }

tag(:ul) do
  tag(:li) { "It sparkles!"}
  tag(:li) { "It shines!"}
  tag(:li) { "It mesmerizes!"}
end