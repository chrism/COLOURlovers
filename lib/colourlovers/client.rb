module Colourlovers
   
  class Client
  
    include HTTParty
    default_params :format => 'json'
    base_uri 'http://www.colourlovers.com/api'
    
    # Rather than making laborious calls to `Colourlovers::Client.colors` you can create an instance
    # of the {Colourlovers::Client} and call methods on it. Instance methods will be defined for 
    # class methods on their first utilization.
    # @example
    #   cl = Colourlovers::Client.new
    #   cl.colors    #=> [...]
    def method_missing(method, *args, &block)
      super unless self.class.respond_to? method
      self.class.class_eval do
        define_method method do |*args, &block|
          self.class.send(method, *args, &block)
        end
      end
      self.class.send(method, *args, &block)
    end
    
    class << self    
      
      ## COLORS ##
         
      # List colors
      # @see Colourlovers::Color.all
      def colors(options={})
        Color.all(options)
      end
      
      # List top colors
      # @see Colourlovers::Color.top
      def top_colors(options={})
        Color.top(options)
      end
  
      # List new colors
      # @see Colourlovers::Color.new
      def new_colors(options={})
       Color.new(options)
      end
    
      # Retrieve random color
      # @see Colourlovers::Color.random
      def random_color
        Color.random
      end
      
      # Retrieve color from hex value
      # @see Colourlovers::Color.find
      def color(hex)
        Color.find(hex)
      end
      
      ## PALETTES ##
      
      # List palettes
      # @see Colourlovers::Palette.all
      def palettes(options={})
        Palette.all(options)
      end
      
      # List top palettes
      # @see Colourlovers::Palette.top
      def top_palettes(options={})
        Palette.top(options)
      end
  
      # List new palettes
      # @see Colourlovers::Palette.new
      def new_palettes(options={})
       Palette.new(options)
      end
    
      # Retrieve random palette
      # @see Colourlovers::Palette.random
      def random_palette
        Palette.random
      end
      
      # Retrieve palette from paletteID
      # @see Colourlovers::Palette.find
      def palette(paletteID)
        Palette.find(paletteID)
      end 
      
      ## PATTERNS ##
      
      # List patterns
      # @see Colourlovers::Pattern.all
      def patterns(options={})
        Pattern.all(options)
      end
      
      # List top patterns
      # @see Colourlovers::Pattern.top
      def top_patterns(options={})
        Pattern.top(options)
      end
  
      # List new patterns
      # @see Colourlovers::Pattern.new
      def new_patterns(options={})
       Pattern.new(options)
      end
    
      # Retrieve random pattern
      # @see Colourlovers::Pattern.random
      def random_pattern
        Pattern.random
      end
      
      # Retrieve pattern from patternID
      # @see Colourlovers::Pattern.find
      def pattern(patternID)
        Pattern.find(patternID)
      end 
      
      ## LOVERS ##
      
      # List lovers
      # @see Colourlovers::Lover.all
      def lovers(options={})
        Lover.all(options)
      end
      
      # List top lovers
      # @see Colourlovers::Lover.top
      def top_lovers(options={})
        Lover.top(options)
      end
  
      # List new lovers
      # @see Colourlovers::Lover.new
      def new_lovers(options={})
       Lover.new(options)
      end
      
      # Retrieve lover from username
      # @see Colourlovers::Lover.find
      def lover(username)
        Lover.find(username)
      end 
            
    end
  
  end
  
end
