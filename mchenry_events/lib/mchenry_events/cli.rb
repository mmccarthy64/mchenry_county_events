class MchenryEvents::CLI
  def call
    puts "\nWelcome to Mchenry County Events!\n"
    get_cities
    list_cities
    get_user_city
    
  end
  
  def get_cities
    @cities = MchenryEvents::City.all
  end
  
  def list_cities
    @cities.each.with_index(0) do |city, index|
      puts "#{index}. #{city.name}"
    end
    puts "Which city would you like to find events for?"
    puts "Please enter the city number"
  end
  
  def get_user_city
    chosen_city = gets.strip.to_i
    show_events_for(chosen_city) if valid_input(chosen_city.to_i, @cities)
  end
  
  
  def valid_input(input, data)
    input <= data.length && input > 0
  end
  
  # def list_events
  #   @city.get_events
  #   puts "Which event are you interested in?"
  #   puts "Please enter the event number."
  # end
  
  # def show_event_info(chosen_event)
    
  # end
  
  def get_event_for(chosen_city)
    chosen_city = gets.strip.to_i
    show_events_for(chosen_city) if valid_input(chosen_city.to_i, @events)
    
  end
end










