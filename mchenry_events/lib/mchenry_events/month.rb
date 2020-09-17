class MchenryEvents::Month
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    MchenryEvents::Scraper.scrape_months if @@all.empty?
    @@all
  end
  
end