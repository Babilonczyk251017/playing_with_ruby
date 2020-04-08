
# Arrays: map / select / reject
tab1 = ['cool', 'cooler', 'the coolest!']

tab2 = tab1.select { |el| el != 'cooler' }

p tab1
p tab2 # new array without 'cooler' element

tab3 = tab1.reject { |el| el != 'cooler' }

p tab3 # new array with only 'cooler' element

tabN = [1,2,3,4,5]
tab4 = tabN.map { |i| i * 5 }
p tab4

# Hashes: map / select / reject

hash1 = { one: 1, two: 2, three: 3}

hash2 = hash1.select { |k, v| v >= 2}

p hash1
p hash2

hash3 = hash1.reject { |k, v| v != 2 }

p hash3

tab5 = hash1.map { |k, v| v*5 } #map on hash will return array

p tab5

hash4 = {}
hash1.each {|k, v| hash4[k] = v*5}
p hash4