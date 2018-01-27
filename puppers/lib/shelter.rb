class Puppers::Shelter

  attr_accessor :name, :address, :distance, :phone, :url

  @@shelters = []

  def initialize#(scraped_data)
    # use scrape return to get info and create shelters
    #@@shelters << self
  end

  def self.create_from_collection
    # use scraped data to create shelters via Shelter.new
  end

  def self.all
    #should return a collection of all instances of Shelter
    @@shelters
    puts "I've run the zip and here are your shelters!"
    puts "1. Puppies R Us"
    puts "2. Kitties are The Best"
    puts "3. I Want A Ferret"
  end


end
