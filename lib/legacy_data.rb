def legacy_data(hash)
  new_hash = {}
  hash.each do |key, value_array|
    value_array.each do |value|
      new_hash[value.downcase] = key
    end
  end
  new_hash.sort
end  
