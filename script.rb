message = "Aa0"
message_array = message.bytes
code_shift = 1
num_array = Array(48..57).cycle
caps_array = Array(65..90).cycle
lower_array = Array(97..122).cycle


p index = num_array.find_index(48)
p shift_number = index + code_shift + 1
  new_num = (shift_number).times do |value|
  value = num_array.next
  p value
end


p index = caps_array.find_index(65)
p shift_number = index + code_shift + 1
  new_num = (shift_number).times do |value|
  value = caps_array.next
  p value
end


p index = lower_array.find_index(97)
p shift_number = index + code_shift + 1
  new_num = (shift_number).times do |value|
  value = lower_array.next
  p value
end

