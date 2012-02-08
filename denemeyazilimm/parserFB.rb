require 'rubygems'
require 'twitter'
require 'open-uri'

b=Twitter.user("InsparkCommunit").location
Twitter.search("legends", :result_type => "recent").map do |status|
  puts"#{status.from_user}: #{status.text}"
end
printf b+"\n"