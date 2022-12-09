# will build an array [[name, price], ...] for vanocni trhaky page
def array_builder(num_of_pages)
  combined_array = []

  num_of_pages.times do |i|
    page = HTTParty.get("https://www.alza.cz/vanocni-trhaky/e16.htm#f&cst=1&cud=1&pg=#{i}&prod=")

    parsed_page = Nokogiri::HTML(page.body)

    name_on_page = parsed_page.css('.fb>a').map(&:text)
    prices_on_page = parsed_page.css('.price-box__price').map(&:text).map { |price| price.gsub(/[[:space:]]/, '').to_i }
    discount_prices_on_page = parsed_page.css('.coupon-block__label--price').map(&:text).map { |price| price.gsub(/[[:space:]]/, '').to_i }

    combined_array += name_on_page.zip(prices_on_page, discount_prices_on_page)
  end

  combined_array
end
