require 'HTTParty'

response = HTTParty.get('http://setgetgo.com/randomword/get.php')

words = []
k = 1
10.times do |k, v|
  words[k] = HTTParty.get('http://setgetgo.com/randomword/get.php')
  k += 1
end

puts words
