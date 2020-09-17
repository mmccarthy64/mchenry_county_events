class MchenryEvents::CLI
  def call
    puts "\nWelcome to Mchenry County Events!\n"
    
    get_months
    list_months
    puts "Which month would you like to find events for (enter 1-4)"
    get_user_month
    chosen_month
  end
  
  def get_months
    MchenryEvents::Month.new("Jan")
    MchenryEvents::Month.new("Feb")
    @months = MchenryEvents::Month.all
  end
  
  def list_months
    @months.each.with_index(1) do |month, index|
      # binding.pry
      puts "#{index}. #{month.name}"
    end
  end
  
  def get_user_month
    chosen_month = gets.strip.to_i
    show_months_for(chosen_month) if valid_input(chosen_month.to_i, @months)
  end
  
  def valid_input(input, data)
    input <= data.length && input > 0
  end
  
  def show_months_for(chosen_month)
    month = @months[chosen_month-1]
    puts "Here are events for #{month}"
  end
end










