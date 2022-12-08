require 'nokogiri'
require 'httparty'
require 'csv'
require_relative 'table'
require_relative 'array_builder'

CSV.open('trhaky.csv', 'w', headers: true) do |csv|
  csv << ['Name', 'Price']
  array_builder(2).each { |array| csv << array }
end

table_out_of('trhaky.csv')