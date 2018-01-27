class Puppers::Shelter

  attr_accessor :name, :address, :phone, :url

  @shelters = []

  def self.all
    #should return a collection of all instances of Shelter
    # @shelters
    puts "I've run the zip and here are your shelters!"
    puts "1. Puppies R Us"
    puts "2. Kitties are The Best"
    puts "3. I Want A Ferret"
  end

end
