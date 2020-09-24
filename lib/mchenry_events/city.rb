
class MchenryEvents::City
    attr_accessor :name, :events
    
    @@all = []
    
    def initialize(name)
      @name = name
      @events = []
      save
    end
    
    def save
      @@all << self
    end
    
    def self.all
      MchenryEvents::Scraper.scrape_cities if @@all.empty?
      @@all
    end
    
    def get_events
      MchenryEvents::Scraper.scrape_events(self) if @events.empty?
      @events
    end
  end