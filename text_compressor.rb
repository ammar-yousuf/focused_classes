class TextCompressor
  attr_reader :unique, :index
  
  def initialize( text )
    @unique = []
    @index = []

    words = text.split
    words.each do |word|
    	
    	# Check to see if the word exists in the @unique array
    	i = @unique.index( word )
    	if i 
    		@index << i
    	else
    		@unique << word
    		
    		# Tell the index array where the word is in the @unique array
    		@index << @unique.size - 1
    	end
    end
  end
end