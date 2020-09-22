class MchenryEvents::CLI
  def call
    puts "\nWelcome to Mchenry County Events!\n"
    get_cities
    list_cities
    get_user_city
    # get_user_event
    event_again
  end
  
  def get_cities
    @cities = MchenryEvents::City.all
  end
  
  def list_cities
    @cities.each.with_index(0) do |city, index|
      puts "#{index}. #{city.name}"
    end
  end
  
  def get_user_city
    puts "Which city would you like to find events for?"
    puts "Please enter the city number."
    chosen_city = gets.strip.to_i
    show_events_for(chosen_city) if valid_input(chosen_city, @cities)
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_events_for(chosen_city)
    city = @cities[chosen_city]
    city.get_events
  end
  
  def event_again
    puts "Would you like to see more events?"
    puts "Enter (y/n) or 'exit'."
    input = gets.strip
    if input == "y"
      list_cities
      get_user_city
      event_again
    elsif input == "exit" || input == "n"
      puts "Goodbye!"
    end
  end
  
  
  
  
  
  
  
  
  
  
  def get_user_event
    chosen_event = gets.strip.to_i
    event_info(chosen_event) if valid_input(chosen_event, show_events_for(chosen_event))
  end
  
  def event_info(chosen_event)
    event = @events[chosen_event]
    event.event_info
  end

end










