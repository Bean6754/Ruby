require 'net/http'
require 'resolv-replace'

the_date = Time.now.strftime("%d-%m-%Y_%H-%M")
file_name = ("ip_" + the_date + ".txt")

URL_1 = URI('http://myexternalip.com/raw')
URL_2 = URI('http://checkip.dyndns.org')
URL_3 = URI('http://whatismyip.akamai.com')
URL_4 = URI('http://ipecho.net/plain')
URL_5 = URI('http://icanhazip.com')
URL_6 = URI('http://ipv6.icanhazip.com')
URL_7 = URI('http://ident.me')
URL_8 = URI('http://bot.whatismyipaddress.com')

IP_1 = Net::HTTP.get(URL_1)
output1 = File.open(file_name,"w")
output1 << IP_1 + "\n"
output1.close

IP_2 = Net::HTTP.get(URL_2)
output2 = File.open(file_name,"a")
output2 << IP_2 + "\n"
output2.close

IP_3 = Net::HTTP.get(URL_3)
output3 = File.open(file_name,"a")
output3 << IP_3 + "\n"
output3.close

IP_4 = Net::HTTP.get(URL_4)
output4 = File.open(file_name,"a")
output4 << IP_4 + "\n"
output4.close

IP_5 = Net::HTTP.get(URL_5)
output5 = File.open(file_name,"a")
output5 << IP_5 + "\n"
output5.close

IP_6 = Net::HTTP.get(URL_6)
output6 = File.open(file_name,"a")
output6 << IP_6 + "\n"
output6.close

IP_7 = Net::HTTP.get(URL_7)
output7 = File.open(file_name,"a")
output7 << IP_7 + "\n"
output7.close

IP_8 = Net::HTTP.get(URL_8)
output8 = File.open(file_name,"a")
output8 << IP_8 + "\n"
output8.close
