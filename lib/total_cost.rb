def total_cost(price:, tax_rate: 5.0, shipping_fee: 2.99, discount: 0)
  price * (1 + tax_rate / 100) - discount + shipping_fee
end

# price*(1-discount/100)*(1+tax/100) + shipping_fee
