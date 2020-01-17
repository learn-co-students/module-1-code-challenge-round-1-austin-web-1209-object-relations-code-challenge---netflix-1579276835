class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |rev|
      rev.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do |rev|
      rev.movie
    end
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.find do |rev|
      if rev == movie 
        return true
      else
        return false
      end
    end
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
        Review.all.find do |rev|
          rev.movie == movie
          rev.rating = rating
        end        
    else 
      Review.new(self,movie,rating)
    end
  end
  
end
