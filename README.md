# Colourlovers

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'colourlovers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install colourlovers

## Usage


```ruby

cl = Colourlovers::Client.new

# for colors (parameters supported)
colors = cl.colors({:numResults => 3, :lover => 'COLOURlover'})
top_colors = cl.top_colors({:numResults => 3})
new_colors = cl.new_colors({:numResults => 3})
random_color = cl.random_color
color = cl.color('FFFFFF')

p "colors"
p colors
p "top_colors"
p top_colors
p "new_colors"
p new_colors
p "random_color"
p random_color
p "color"
p color

# for palettes (parameters supported)
palettes = cl.palettes({:numResults => 5})
top_palettes = cl.top_palettes({:numResults => 3})
new_palettes = cl.new_palettes({:numResults => 3})
random_palette = cl.random_palette
palette = cl.palette('113451')

p "palettes"
p palettes
p "top_palettes"
p top_palettes
p "new_palettes"
p new_palettes
p "random_palette"
p random_palette
p "palette"
p palette

# for patterns (parameters supported)
patterns = cl.patterns({:numResults => 5})
top_patterns = cl.top_patterns({:numResults => 3})
new_patterns = cl.new_patterns({:numResults => 3})
random_pattern = cl.random_pattern
pattern = cl.pattern('1451')

p "patterns"
p patterns
p "top_patterns"
p top_patterns
p "new_patterns"
p new_patterns
p "random_pattern"
p random_pattern
p "pattern"
p pattern

# for lovers (parameters supported)
lovers = cl.lovers({:numResults => 5})
top_lovers = cl.top_lovers({:numResults => 3})
new_lovers = cl.new_lovers({:numResults => 3})
lover = cl.lover('COLOURlover')

p "lovers"
p lovers
p "top_lovers"
p top_lovers
p "new_lovers"
p new_lovers
p "lover"
p lover



```



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
