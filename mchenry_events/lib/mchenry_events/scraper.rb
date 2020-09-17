class MchenryEvents::Scraper
  
  def self.scrape_cities
    doc = Nokogiri::HTML(open("https://www.visitmchenrycounty.com/Annual-Events"))
    
    cities = doc.css('select#city option')
    
    cities.each do |n|
      name = n.text
      MchenryEvents::City.new(name)
    end
  end
    
end