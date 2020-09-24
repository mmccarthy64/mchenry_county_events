class MchenryEvents::Event
    attr_accessor :name, :city
    
    @@all = []
    
    def initialize(name, city)
      @name = name
      @city = city
      add_to_city
      save
    end
    
    def save
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def add_to_city
      @city.events << self unless @city.events.include?(self)
    end
  end