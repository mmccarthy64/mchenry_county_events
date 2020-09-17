require_relative "./mchenry_events/version"
require_relative "./mchenry_events/cli"
require_relative "./mchenry_events/month"
require_relative "./mchenry_events/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module MchenryEvents
  class Error < StandardError; end
  # Your code goes here...
end
