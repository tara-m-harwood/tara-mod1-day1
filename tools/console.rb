require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alan = Customer.new "Alan","Alda"
aaron = Customer.new "Aaron","Alda"
billy = Customer.new "Billy","Blanks"
carol = Customer.new "Carol","Channing"
daisy = Customer.new "Daisy","Duke"
carol_b = Customer.new "Carol", "Brady"

mels = Restaurant.new "Mel's Diner"
alices = Restaurant.new "Alice's Restaurant"
hotelca = Restaurant.new "Hotel California"

alan_mels1 = Review.new alan, mels, 5
alan_mels2 = Review.new alan, mels, 1
aaron_alices = Review.new aaron, alices, 4
billy_hotelca = Review.new billy, hotelca, 1
carol_mels = Review.new carol, mels, 2
daisy_alices = Review.new daisy, alices, 3
daisy_mels = Review.new daisy, mels, 4
daisy_hotelca = Review.new daisy, hotelca, 5
daisy_hotelca = Review.new daisy, hotelca, 1


####  p hotelca.average_star_rating


#binding.pry
#0 #leave this here to ensure binding.pry isn't the last line

# p Customer.all
# p carol.given_name
# p dottie.family_name

# p Restaurant.all
# p mels.name

# p Review.all
# p alan_mels.rating
# p daisy_alices.rating

# p carol_mels.customer
# p carol_mels.restaurant

#p mels.reviews
#p mels.customers

#p daisy.restaurants

#p carol.add_review alices, 5

# p daisy.num_reviews
# p billy.num_reviews

# p Customer.find_all_by_given_name "Carol"