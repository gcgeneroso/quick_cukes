module Amazon
  class ProductDetailsPage < UniversalPage
    span(:product_title, id: 'productTitle')
    span(:dollars, class: 'price-large')
    span(:cents, class: 'price-info-superscript', index: 1)
  end
end
