module Colourlovers
  
  class Palette
         
    class << self
      
      # Retrieve palettes as an array of hashes with options available from Colourlovers API
      # see documentation here: http://www.colourlovers.com/api#palettes
      # lover  =  COLOURlover
      # hueOption  =  yellow,orange,red  or  green,violet  or  blue
      # [Possible Values can be a combination of: red, orange, yellow, green, aqua, blue, violet, and / or fuchsia]
      # hex  =  00FF33   [Possible Values: any valid 6-char hex value]
      # keywords  =  search+term
      # keywordExact  =  0 or 1   [Perform an exact search for the keywords passed. Default 0]
      # orderCol  =  X   [Where X can be: dateCreated, score, name, numVotes, or numViews]
      # sortBy  =  X   [Where X can be: ASC or DESC. Default ASC]
      # numResults  =  20   [Number of results to return, maximum of 100. Default 20]
      # resultOffset  =  5   [Result offset, for paging. Default 0]
      # format  =  json or xml   [Result format. Default is xml]
      # jsonCallback  =  yourCallbackFunction   [Adds a callback to JSON format. Assumes format=json]
      # showPaletteWidths  =  0 or 1   [Shows palette's color's widths. Default 0]   
      def all(options)  
        Client.get("/palettes", :query => options)
      end
      
      # Retrives palettes as an array of hashes, same options as all but ordered by popularity
      def top(options)  
        Client.get("/palettes/top", :query => options)
      end

      # Retrives palettes as an array of hashes, same options as all but ordered by dateCreated
      def new(options)  
        Client.get("/palettes/new", :query => options)
      end     
      
      # Retrieve random palette as an array with one hash, no parameters allowed
      def random
        Client.get("/palettes/random")
      end
      
      # Retrieve palette details from paletteID as an array with one hash
      def find(paletteID)
        Client.get("/palette/#{paletteID}")
      end
           
    end
    
  end
   
end
