class Customer
  
  attr_accessor :given_name, :family_name

  @@all =[]

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  # instance methods, one customer at a time

  # not writing methods for given name / family name, bc those are built into how Classes work!

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    filtered = Review.all.filter { |review| review.customer==self }
    mapped = filtered.map { |review| review.restaurant }
    mapped.uniq
  end

  def num_reviews
    filtered = Review.all.filter { |review| review.customer==self }
    filtered.length
  end
  
  def add_review restaurant, rating
    Review.new self, restaurant, rating
  end  


  # class methods, all in! these always start with self, which here means the whole class


  def self.find_all_by_given_name(name)
   all.filter{ |customer| customer.given_name == name}
  end  

  def self.all
    @@all
  end   

end
