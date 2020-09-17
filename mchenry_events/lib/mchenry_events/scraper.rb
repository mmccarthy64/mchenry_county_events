class MchenryEvents::Scraper
  
  def scrape_months(site)
    doc = Nokogiri::HTML(open("https://www.visitmchenrycounty.com/Events"))
    binding.pry
  end
  
end