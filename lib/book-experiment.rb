class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

  GENRES = []

  def initialize(title)
    @title = title
  end

  def genre=(genre) #Needed to make this a separate method since it's different than a vanilla genre= method
                    #can still have reader for genre since we still only want it to return genre
    @genre= genre
    unless GENRES.include?(genre)
        GENRES << genre #Add this INSTANCE's genre to the GENRES arr. Ex. genre = "horror" GENRES now = ["horror"]
    end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

end