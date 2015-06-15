def convert(amount_chf, target)
  rates = {"EUR" => 0.956531296, "USD" => 1.06, "GBP" => 0.7}
  rate = rates[target.upcase]
  result = amount_chf.to_i * rate
end