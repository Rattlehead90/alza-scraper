require 'terminal-table'

# convert to table for the output to console: 
def table_out_of(name_of_the_file)
  # Read the lines of the CSV file
  lines = File.readlines(name_of_the_file)

  # Split each line into an array of values
  values = lines.map { |line| line.split(',') }

  # Generate the table
  table = Terminal::Table.new :rows => values

  # Print the table to the console
  puts table
end
