module Colourlovers
  
  class Color
         
    class << self
      
      # Retrieve colors as an array of hashes with options available from Colourlovers API
      # see documentation here: http://www.colourlovers.com/api#colors
      # lover	=	COLOURlover
      # hueRange	=	12,68   [values must be 0>value<359, and the left value must be less than the right value]
      # briRange	=	2,88   [values must be 0>value<99, and the left value must be less than the right value]
      # keywords	=	search+term
      # keywordExact	=	0 or 1   [Perform an exact search for the keywords passed. Default 0]
      # orderCol	=	X   [Where X can be: dateCreated, score, name, numVotes, or numViews]
      # sortBy	=	X   [Where X can be: ASC or DESC. Default ASC]
      # numResults	=	20   [Number of results to return, maximum of 100. Default 20]
      # resultOffset	=	5   [Result offset, for paging. Default 0]        
      def all(options)  
        Client.get("/colors", :query => options)
      end
      
      # Retrives colors as an array of hashes, same options as all but ordered by popularity
      def top(options)  
        Client.get("/colors/top", :query => options)
      end

      # Retrives colors as an array of hashes, same options as all but ordered by dateCreated
      def new(options)  
        Client.get("/colors/new", :query => options)
      end     
      
      # Retrieve random color as an array with one hash, no parameters allowed
      def random
        Client.get("/colors/random")
      end
      
      # Retrieve color details from hex value as an array with one hash
      def find(hex)
        Client.get("/color/#{hex}")
      end
           
    end
    
  end
   
end
