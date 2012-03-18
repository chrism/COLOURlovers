module Colourlovers
  
  class Pattern
         
    class << self
      
      # Retrieve patterns as an array of hashes with options available from Colourlovers API
      # see documentation here: http://www.colourlovers.com/api#patterns
      # lover  =  COLOURlover
      # hueOption  =  yellow,orange,red  or  green,violet  or  blue
      # [Possible Values can be a combination of: red, orange, yellow, green, aqua, blue, violet, and / or fuchsia]
      # hex  =  00FF33 [Possible Values: any valid 6-char hex value]
      # keywords  =  search+term
      # keywordExact  =  0 or 1 [Perform an exact search for the keywords passed. Default 0]
      # orderCol  =  X [Where X can be: dateCreated, score, name, numVotes, or numViews]
      # sortBy  =  X [Where X can be: ASC or DESC. Default ASC]
      # numResults  =  20 [Number of results to return, maximum of 100. Default 20]
      # resultOffset  =  5 [Result offset, for paging. Default 0]      
      def all(options)  
        Client.get("/patterns", :query => options)
      end
      
      # Retrives patterns as an array of hashes, same options as all but ordered by popularity
      def top(options)  
        Client.get("/patterns/top", :query => options)
      end

      # Retrives patterns as an array of hashes, same options as all but ordered by dateCreated
      def new(options)  
        Client.get("/patterns/new", :query => options)
      end     
      
      # Retrieve random pattern as an array with one hash, no parameters allowed
      def random
        Client.get("/patterns/random")
      end
      
      # Retrieve pattern details from patternID
      def find(patternID)
        Client.get("/pattern/#{patternID}")
      end
           
    end
    
  end
   
end
