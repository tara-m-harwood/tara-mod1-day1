class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  ## instance methods

  def reviews
    Review.all.filter { |review| review.restaurant==self }
  end
  
  # prob not that efficient, go back if time
  def customers
    filtered = Review.all.filter { |review| review.restaurant==self }
    mapped = filtered.map { |review| review.customer }
    mapped.uniq
  end

  # come back to this; research sum more

  def average_star_rating
    filtered = Review.all.filter { |review| review.restaurant==self }
    mapped = filtered.map { |review| review.rating }
    # mapped.sum { |rating| }
   #(summed.to_f / filtered.length.to_f).round
  end  



  ## class methods

  def self.all
    @@all
  end  

end
