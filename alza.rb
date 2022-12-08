require 'nokogiri'
require 'httparty'
require 'csv'
require_relative 'table'
require_relative 'array_builder'

def scraper(num_of_pages)
  CSV.open('trhaky.csv', 'w', headers: true) do |csv|
    csv << ['Name', 'Price']
    array_builder(num_of_pages).each { |array| csv << array }
  end

  table_out_of('trhaky.csv')
end

scraper(2) # <-- Change the number of pages you'd like to scrape here