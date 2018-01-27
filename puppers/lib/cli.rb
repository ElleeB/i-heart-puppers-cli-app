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
    end
  end

  def display_shelter_details
    # asks which shelter in which user is interested
    # gets input
    # display specific shelter details
    # give option to go back to the list OR exit
    # if exit goodbye
  end

  def valid_zip?(zip)
    zip == "48070" ? true : false
  end

  def exit
    # ask what user would like to do
    # goodbye if done
  end

  def goodbye
    "Thank you for considering rescue!"
  end

end
