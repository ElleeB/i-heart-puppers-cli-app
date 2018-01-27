class Puppers::Shelter

  attr_accessor :name, :address, :distance, :phone, :url

  @shelters = []

  # def initialize#(scraped_data)
  #   # use scrape return to get info and create shelters
  #   #@@shelters << self
  # end

  # def self.create_from_collection
  #   # use scraped data to create shelters via Shelter.new
  # end

  def self.all
    #should return a collection of all instances of Shelter
    # @@shelters
    puts "I've run the zip and here are your shelters!"
    # puts "1. Puppies R Us"
    # puts "2. Kitties are The Best"
    # puts "3. I Want A Ferret"

    shelter_1 = self.new
    shelter_1.name = "1. Puppies R Us"
    shelter_1.address = "555 5th Avenue, Ourtown, USA 48070"
    shelter_1.distance = "1 mile away"
    shelter_1.phone = "333-555-2222"
    shelter_1.url = "www.welovepuppies"
    @shelters << shelter_1
  end


end
