class Puppers::Shelter

  attr_accessor :name, :address, :distance, :phone, :url

  @shelters = []

  # def initialize#(scraped_data)??
  #   # use scrape return to get info and create shelters
  #   #@shelters << self
  # end

  # def self.create_from_collection
  #   # use scraped data to create shelters via Shelter.new
  # end

  def self.all
    #should return a collection of all instances of Shelter
    # @shelters

    shelter_1 = self.new
    shelter_1.name = "Puppies R Us"
    shelter_1.address = "555 5th Avenue, Ourtown, USA 48070"
    shelter_1.distance = "1 mile away"
    shelter_1.phone = "333-555-2222"
    shelter_1.url = "www.welovepuppies"

    shelter_2 = self.new
    shelter_2.name = "Kitties are The Best"
    shelter_2.address = "3256 LaLa Avenue, Ourtown, USA 48070"
    shelter_2.distance = "3 miles away"
    shelter_2.phone = "666-888-1111"
    shelter_2.url = "www.welovekitties.com"

    shelter_3 = self.new
    shelter_3.name = "I Want a Ferret"
    shelter_3.address = "592021 Ferret Blvd, Ferret, USA 48070"
    shelter_3.distance = "5 miles away"
    shelter_3.phone = "522-373-0987"
    shelter_3.url = "www.ferretsrock.com"

    [shelter_1, shelter_2, shelter_3]
  end


end
