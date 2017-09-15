filter = Nginx::Filter.new
response = filter.body.gsub(/</, "&lt;").gsub(/>/, "&gt;")
filter.body = response
