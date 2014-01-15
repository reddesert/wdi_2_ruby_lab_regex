require_relative '../source'
require 'pry'

def valid_ip_addresses
  # code should:
  # - find strings that look like IP addresses
  # - use rand(1..254) for first and last places in string, rand(0..254) for middle spots?
end

def valid_mit_ip_addresses
  # code should:
  # - find strings that look like IP addresses and start with 18.
end

def non_mit_ip_addresses
  # code should:
  # - find strings that look like IP addresses and don't start with 18.
end

def valid_phone_numbers(:source_text)
  # code should:
  # - find strings that look like phone numbers, whether or not they include a 1- at the very beginning.
  # - exclude numbers where area code + town exchange exclude 3 digit strings: 100-700
  source_text.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq
  binding.pry
end

def area_codes
  # code should:
  # - find strings that look like phone numbers, whether or not they include a 1- at the very beginning
  # - exclude 3 digit number that starts with 1
end

def email_addresses
  # code should:
  # - find strings that look like email addresses, containing string + @ + . + string.
end

def zip_codes
  # code should:
  # - find five digit strings with no other punctuation
  # - exclude other digit strings
end

def hex_colors
  # code should:
  # - find strings that look like eithe
end