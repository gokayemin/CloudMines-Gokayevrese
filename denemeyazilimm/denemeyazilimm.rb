require 'rubygems'
require 'linkedin'

client = LinkedIn::Client.new('w35cfbpjmqqc', '181iBRQzqnw76Ywl')

rtoken = client.request_token.token
rsecret = client.request_token.secret

puts client.request_token.authorize_url
#pin = gets.strip

#puts client.authorize_from_request(rtoken, rsecret, pin)

atoken = '6e6152e0-c151-435e-a15e-0719edf74a2c'
asecret = '74dad528-4fd4-486b-b5b1-0c0c407659bd'

puts client.authorize_from_access(atoken, asecret)

puts client.profile

puts user = client.profile(:fields => %w(positions))
puts companies = user.positions.all.map{|t| t.company}

puts client.profile(:url => 'http://tr.linkedin.com/in/serdarsusuz')

#puts client.profile(:id =>11487650)
puts client.network_updates





