## CLI Controller (business logic, user interactions)

class Puppers::CLI

  def call
    puts "*************"
    puts "We Heart Rescue".upcase
    puts "*************"
    puts ""
    puts "To find shelters with pets for adoption near you, please enter your zip code."
    puts ""

    display_shelters
    display_shelter_details

    # gets input
    # display shelters w/name, city, cross streets
    # ask which shelter for which user would like more info
    # gets input
    # diplay detailed info about the shelter
  end

  def display_shelters
    zip = gets.strip
    puts "Shelters near you:"
    # check if valid
    if valid_zip?(zip)
      #run the zip and list shelters
      puts "I've run the zip and here are your shelters!"
      puts "1. Puppies R Us"
      puts "2. Kitties are The Best"
      puts "3. I Want A Ferret"
    else
      puts "Please enter a valid zip code."
      display_shelters
    end
  end

  def display_shelter_details
    # asks which shelter user is interested
    puts "Enter a number for more details about your shelter, or enter 'search' to go back to search."
    # gets input
    input = gets.strip
    # display specific shelter details
    # check if valid - valid_shelter_selection(input)
    # if valid_shelter_selection?(input), then...
    if input == "1"
      puts "Puppies R Us"
      puts "555 5th Avenue"
      puts "Ourtown, USA 48070"
    elsif input == "2"
      puts "Kitties are The Best"
      puts "433 Kittylitter Blvd"
      puts "Sillypaws, USA 48070"
    elsif input == "3"
      puts "I Want A Ferret"
      puts "29067 Fluffy Lane"
      puts "Sillyface, USA 48070"
    elsif input == "search"
      self.call
    end
    # give option to go back to the list OR exit
    puts "To return to the Shelter List, please enter 'back', or 'exit' to quit"
    input = gets.strip
    if input == "back"
      self.display_shelters #zip variable? ## this does not work, obviously
    elsif input == "exit"
      goodbye
    end
  end

  def valid_zip?(zip)
    zip == "48070" ? true : false
  end

  def valid_shelter_selection?(input)
    # use regex valid if 1 - highest number of returned shelters
  end

  def goodbye
    puts "Thank you for considering a rescue companion!"
  end

end
