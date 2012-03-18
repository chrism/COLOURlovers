require 'httparty'

require "colourlovers/version"
require 'colourlovers/client'
require 'colourlovers/color'
require 'colourlovers/palette'
require 'colourlovers/pattern'
require 'colourlovers/lover'

cl = Colourlovers::Client.new

# colors = cl.colors({:numResults => 3, :lover => 'COLOURlover'})
# random_color = cl.random_color
# top_colors = cl.top_colors({:numResults => 3})
# new_colors = cl.new_colors({:numResults => 3})
color = cl.color('FFFFFF')

palettes = cl.palettes({:numResults => 5})
# random_palette = cl.random_palette
# top_palettes = cl.top_palettes({:numResults => 3})
# t = cl.patterns

palettes.each do |palette|
  puts palette['title']
end

puts color.first['title']

