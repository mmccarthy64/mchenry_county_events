class MchenryEvents::CLI
  def call
    puts "\nWelcome to Mchenry County Events!\n"
    
    # get_months
    # list_months
    # puts "Which month would you like to find events for (enter 1-4)"
    # get_user_month
    # chosen_month
    
    get_cities
    list_cities
    puts "Which city would you like to find events for?"
    puts "Enter a number from 1-9"
    get_user_city
    show_events_for(chosen_city)
  end
  
  def get_cities
    @cities = MchenryEvents::City.all
  end
  
  def list_cities
    @cities.each.with_index(0) do |city, index|
      # binding.pry
      puts "#{index}. #{city.name}"
    end
  end
  
  # def get_months
  #   @months = MchenryEvents::Location.all
  # end
  
  # def list_months
  #   @cities.each.with_index(1) do |city, index|
  #     # binding.pry
  #     puts "#{index}. #{city.name}"
  #   end
  # end
  
  # def get_user_month
  #   chosen_month = gets.strip.to_i
  #   show_months_for(chosen_month) if valid_input(chosen_month.to_i, @months)
  # end
  
  def get_user_city
    chosen_city = gets.strip.to_i
    show_city_for(chosen_city) if valid_input(chosen_city.to_i, @cities)
  end
  
  
  def valid_input(input, data)
    input <= data.length && input > 0
  end
  
  def show_events_for(chosen_city)
    city = @cities[chosen_city-1]
    puts "Here are events for #{city.name}"
  end
end










