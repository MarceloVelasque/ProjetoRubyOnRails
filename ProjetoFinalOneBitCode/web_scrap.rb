require 'nologirl'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)
#para fazer chamadas https
https.use_sll = true

response = https.get("/")

doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')
puts h1.content 