module Amazon
    class HomePage < UniversalPage
        page_url "amazon.com"

        text_field(:search_box, id: "twotabsearchtextbox")
        button(:search, value: "Go")
    end
end
