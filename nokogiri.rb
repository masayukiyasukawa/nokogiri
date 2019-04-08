#webに接続するためのライブラリ
require "open-uri"
#クレイピングに使用するライブラリ
require "nokogiri"
 
doc = Nokogiri::HTML(open('https://www.uta-net.com/artist/17598/'))

puts "### Search for nodes by css"
doc.xpath('//td[@class="side td1"]').each do |node|
  puts node.css('a').text
end