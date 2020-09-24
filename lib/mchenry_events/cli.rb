class MchenryEvents::CLI
    def call
      puts "\nWelcome to Mchenry County Events!\n"
      run
    end
  
    def run
      puts ""
      get_cities
      list_cities
      get_user_city
      event_again
    end
    
    def get_cities
      @cities = MchenryEvents::City.all
    end
    
    def list_cities
      @cities.map.with_index do |city, index|
          puts "#{index+1}. #{city.name}"
      end
    end
    
    def get_user_city
      puts "\nWhich city would you like to find events for?\n"
      puts "Please enter the city number:"
      puts ""
      chosen_city = gets.strip.to_i
      show_events_for(chosen_city) if valid_input(chosen_city, @cities)
    end
    
    def valid_input(input, data)
      if input.to_i <= data.length && input.to_i > 0
        true
      else
        puts "\nI didn't understand that input.\n"
      end
  
    end
    
    def show_events_for(chosen_city)
      city = @cities[chosen_city-1]
      puts ""
      puts "Events taking place in #{city.name}:"
      puts ""
      city.get_events
    end
    
    def event_again
      puts "\nWould you like to see more events?\n"
      puts "Enter (y/n)"
      input = gets.strip
  
      if input == "y"
        run
      elsif input == "n"
        puts "Goodbye!"
      else
        puts "\nI didn't understand that input.\n"
        event_again
      end
    end
  
  end
  
  
  
  
  
  
  
  
  
  
  