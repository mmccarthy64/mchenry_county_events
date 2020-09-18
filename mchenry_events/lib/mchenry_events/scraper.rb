class MchenryEvents::Scraper
  
  def self.scrape_cities
    doc = Nokogiri::HTML(open("https://www.visitmchenrycounty.com/Annual-Events"))
    
    cities = doc.css('select#city option')
    
    cities.each do |n|
      name = n.text
      MchenryEvents::City.new(name)
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
  
  # def self.scrape_event_info(event)
  #   doc = Nokogiri::HTML(open("https://www.visitmchenrycounty.com/Annual-Events"))
    
  #   event_info = doc.css('div.listingWrap div.listingContent')
    
  #   event_info.each do |r|
  #     if r.text.include?(city)
  #       puts r.text
  #     end
  #   end
  # end
    
end