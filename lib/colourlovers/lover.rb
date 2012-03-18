module Colourlovers
  
  class Lover
         
    class << self
      
      # Retrieve lovers as an array of hashes with options available from Colourlovers API
      # see documentation here: http://www.colourlovers.com/api#lovers
      # orderCol  =  X   [Where X can be: dateCreated, score, name, numVotes, or numViews]
      # sortBy  =  X   [Where X can be: ASC or DESC. Default ASC]
      # numResults  =  20   [Number of results to return, maximum of 100. Default 20]
      # resultOffset  =  5   [Result offset, for paging. Default 0]     
      def all(options)  
        Client.get("/lovers", :query => options)
      end
      
      # Retrives lovers as an array of hashes, same options as all but ordered by popularity
      def top(options)  
        Client.get("/lovers/top", :query => options)
      end

      # Retrives lovers as an array of hashes, same options as all but ordered by dateCreated
      def new(options)  
        Client.get("/lovers/new", :query => options)
      end     
      
      # Retrieve lover details from username as an array with one hash
      def find(username)
        Client.get("/lover/#{username}")
      end
           
    end
    
  end
   
end
