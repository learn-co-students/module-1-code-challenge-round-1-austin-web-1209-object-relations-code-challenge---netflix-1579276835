# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m_1 = Movie.new("Titanic")
m_2 = Movie.new("Dumb and Dumber")
m_3 = Movie.new("Avatar")
m_4 = Movie.new("Nightmare BC")

v_1 = Viewer.new("Tombomb")
v_2 = Viewer.new("Mommytoad")
v_3 = Viewer.new("Kitty")
v_4 = Viewer.new("BuddyBear")

rev_1 = Review.new(v_1,m_1,5)
rev_2 = Review.new(v_1,m_1,5)
rev_3 = Review.new(v_1,m_1,10)
rev_4 = Review.new(v_4,m_4,10)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
