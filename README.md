# alza-scraper
Very simple web-scraper for Alza's Vánoční trháky (sales page on popular Czech e-shop).

# How to use
Open <code>alza.rb</code> and set the number of pages you'd like to scrape inside <code>def scraper(num_of_pages)</code>.
The result is going to be saved to <code>trhak.csv</code> file and printed in console as a table.

# How to modify
<code>array_builder.rb</code> contains the logic to form the data for the CSV file. You could change:
<ul>
  <li>the link to the initial page</li>
  <li>css anchors</li>
  <li>add columns (don't forget to edit CSV writer in <code>alza.rb</code></li>
  <li>and so on...</li>
</ul>

<code>table.rb</code> let's you modify the output table in the console. 
