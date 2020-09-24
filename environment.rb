require_relative "./mchenry_events/version"
require_relative "./mchenry_events/cli"
require_relative "./mchenry_events/scraper"
require_relative "./mchenry_events/city"
require_relative "./mchenry_events/event"

require 'pry'
require 'nokogiri'
require 'open-uri'

module MchenryEvents
  class Error < StandardError; end
  # Your code goes here...
end
