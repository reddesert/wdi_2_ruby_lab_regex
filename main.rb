require_relative 'source'

def valid_ip_addresses(source_text)
  source_text.scan(/\b(?:\d{1,3}\.){3}\d{1,3}\b/)
end

def valid_mit_ip_addresses(source_text)
  source_text.scan(/18\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

def non_mit_ip_addresses(source_text)
  valid_ip_addresses(source_text) - valid_mit_ip_addresses(source_text)
end

def valid_phone_numbers(source_text)
  source_text.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
end

def area_codes(source_text)
  source_text.scan(/(?<=\s)[2-9][0-8][0-9](?=-)/)
end

def email_addresses(source_text)
  source_text.scan(/\w+@.+.com/)
end

def zip_codes(source_text)
  source_text.scan(/\b\d{5}\b/)
end

def hex_colors
  # code should:
  # - find strings that look like eithe
end