message = "0"
message_array = message.bytes
code_shift = 12
num_array = Array(48..57).cycle
caps_array = Array(65..90).cycle
lower_array = Array(97..122).cycle


p index = num_array.find_index(48)
p shift_number = index + code_shift + 1
  new_index = (shift_number).times do |i|
  i = num_array.next
  p i
end



