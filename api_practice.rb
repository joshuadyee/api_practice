require "http"


p "hello"


# https://data.sfgov.org/resource/jjew-r69b.json

data = HTTP.get("https://data.sfgov.org/resource/jjew-r69b.json").parse
#<HTTP::Response/1.1 200 OK {"Server"=>"GitHub.com", "Date"=>"Tue, 10 May...>

i = 0
while i < 10
  p "The route begins at #{data[i]["starttime"]}"
  i += 1
end
