class MchenryEvents::CLI
  def call
    puts 'Welcome to Mchenry County Events!'
    
    get_months
    list_months
    puts "Which month would you like to find events for (enter 1-4)"
    get_user_month
    chosen_month
   
           #search by location, month
    
            # which months events are you looking for?
           # enter 1-12 to find out each months events
    
           # get month from user
    
           # get_events_for(month)
    
            # are you looking for any other events?
              # enter 1-12 to find out each months events
            
              # get month from user
    
               # get_events_for(month)
    
    
  end
  
  def get_months
    # to be scraped instead
    @months = ['July 2020', 'Aug 2020', 'Sept 2020', 'Oct 2020']
  end
  
  def list_months
    @months.each.with_index(1) do |month, index|
      # binding.pry
      puts "#{index}. #{month}"
    end
  end
  
  def get_user_month
    chosen_month = gets.strip.to_i
    binding.pry
    # if valid_input(chosen_month.to_i, @months)
    # end
  end
  
  def valid_input(input, data)
    input <= data.length && input > 0
    
  end
end