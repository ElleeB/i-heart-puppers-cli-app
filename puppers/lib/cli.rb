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
  end

  def display_shelters
    zip = gets.strip

    puts "Shelters near you:"
    # check if valid
    if valid_zip?(zip)
      #run the zip and list shelters
     @shelters = Puppers::Shelter.all
     puts Puppers::Shelter.all
    else
      puts "Please enter a valid zip code."
      display_shelters # instead of this create a loop (zip == nil)
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
    if input == "1" || input == "2" || input == "3"
      puts @shelters[input.to_i - 1]
    elsif input == "search"
      self.call
    else
      puts "Please enter the number of your shelter, or 'search' to go back to the zip code entry."
    end

    # give option to go back to the list OR exit
    puts "To return to the Shelter List, please enter 'back'. To go back to the zib code entry, please enter 'search, or 'exit' to quit"
    input = gets.strip
    if input == "back"
      self.display_shelters #zip variable? ## this does not work, obviously
    elsif input == "search"
      self.call
    elsif input == "exit"
      goodbye
    end
  end

  def valid_zip?(zip)
    zip == "48070" ? true : false
  end

  def valid_shelter_selection?(input)
    # use regex valid if 1 - highest number of returned shelters?
  end

  def goodbye
    puts "Thank you for considering a rescue companion!"
  end

end
