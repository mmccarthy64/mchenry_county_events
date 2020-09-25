class MchenryEvents::Scraper
  
    def self.scrape_cities
      doc = Nokogiri::HTML(open("https://www.visitmchenrycounty.com/Annual-Events"))
      
      cities = doc.css('select#city option')
      
      cities.select do |n|
        name = n.text
        if name != "     "
          MchenryEvents::City.new(name)
        end
      end
    end
    
    def self.scrape_events(city)
      doc = Nokogiri::HTML(open("https://www.visitmchenrycounty.com/Annual-Events"))
      
      name_of_event = doc.css('div.listingWrap div.listingContent')
      
      city = city.name
      name_of_event.collect do |event, index|
        if event.text.include?(city)
          name = event.css('h4').text
          puts "#{index}. #{name}"
        end
      end
    end
      
  end