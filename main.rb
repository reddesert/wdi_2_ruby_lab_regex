require_relative 'source'

def valid_ip_addresses(source_text)
  val_ips = source_text.scan(/\b(?:\d{1,3}\.){3}\d{1,3}\b/)
  val_ips.map {|val_ip| val_ip}
end

def valid_mit_ip_addresses(source_text)
  val_mit_ips = source_text.scan(/18\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
  val_mit_ips.map {|val_mit_ip| val_mit_ip}
end

def non_mit_ip_addresses(source_text)
  non_mit_ips = valid_ip_addresses(source_text) - valid_mit_ip_addresses(source_text)
  non_mit_ips.map {|non_mit_ip| non_mit_ip}
end

def valid_phone_numbers(source_text)
  us_phone_nums = source_text.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
  us_phone_nums.map {|us_phone_num| us_phone_num}
end

def area_codes(source_text)
  codes = source_text.scan(/(?<=\s)[2-9][0-8][0-9](?=-)/)
  codes.map {|code| code}
end

def email_addresses(source_text)
  mails = source_text.scan(/\w+@.+.com/)
  mails.map {|mail| mail}
end

def zip_codes(source_text)
  zips = source_text.scan(/\b\d{5}\b/)
  zips.map {|zip| zip}
end

 def hex_colors(source_text)
   hexes = source_text.scan(/#[[a-f]|[0-9]]{6}/i)
   hexes.map {|hex| hex.delete('#')}
 end