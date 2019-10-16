module Amazon
  class SearchResultsPage < UniversalPage
    divs(:search_result, class: 's-result-item')

    def find_result_with_text(search_text)
      search_result_elements.find do |search_result|
        search_result.h2_element.text.downcase.include? search_text
      end
    end
  end
end
