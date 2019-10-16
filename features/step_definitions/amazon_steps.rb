Given("I am on Amazon") do
    on(Amazon::HomePage).goto
end
  
When("I search for Playstation") do
    on(Amazon::HomePage) do |page|
        page.search_box = "playstation"
        page.search
    end
end

When("I get the details of a bundle product from the search results") do
    on(Amazon::SearchResultsPage) do |page|
        bundle_product = page.find_result_with_text("bundle")
        @product_details = {}
        @product_details["product_title"] = bundle_product.link_element(class: "a-text-normal").text
        @product_details["product_price"] = bundle_product.span_element(class: "a-price").text[1..-1].gsub("\n", ".")
        puts "Playstation bundle: #{@product_details["product_title"]}"
        puts "Bundle price: $#{@product_details["product_price"]}"
        bundle_product.link_element(class: "a-text-normal").click
    end
end

Then("I see that the details match on the product details page") do
    on(Amazon::ProductDetailsPage) do |page|
        expect(page.product_title).to eq @product_details["product_title"]
        product_page_price = page.dollars + "." + page.cents
        expect(product_page_price).to eq @product_details["product_price"]
    end
end
