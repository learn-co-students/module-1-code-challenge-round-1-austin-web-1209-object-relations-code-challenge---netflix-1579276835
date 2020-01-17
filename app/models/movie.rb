class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |rev|
      rev.movie == self
    end
  end

  def reviewers
    self.reviews.map do |rev|
      rev.viewer
    end
  end

  def average_rating
    total = 0
    total_rev = self.reviews.length
      self.reviews.each do |rev|
        total += rev.rating
      end
      total/total_rev
  end

  def self.highest_rated
    Review.all.max do |rev_1, rev_2|
      rev_1.rating <=> rev_2.rating
    end.movie
  end

end
