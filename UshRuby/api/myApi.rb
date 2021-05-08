require 'faraday'

res = Faraday.get 'https://jsonplaceholder.typicode.com/posts' 

puts res.body