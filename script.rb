message = "0AAa0"
message_array = message.bytes
code_shift = 3
num_array = Array(48..57).cycle
caps_array = Array(65..90).cycle
lower_array = Array(97..122).cycle

new_nums = []
new_caps = []
new_lower = []

p message_array

get_new_nums = message_array.each do |item| 
  if item.between?(48, 57)
     index = num_array.find_index(item)
     shift_number = index + code_shift + 1
     make_new_num_arrary = (shift_number).times do |i|
     i = num_array.next
     new_nums.push(i)
     end 
    original_index = message_array.find_index(item)
    message_array[original_index] = new_nums[-1]
    new_nums.clear
    num_array.rewind
  end
end

get_new_caps = message_array.each do |item| 
  if item.between?(65, 90)
     index = caps_array.find_index(item)
     shift_number = index + code_shift + 1
     make_new_caps_arrary = (shift_number).times do |i|
     i = caps_array.next
     new_caps.push(i)
     end 
    original_index = message_array.find_index(item)
    message_array[original_index] = new_caps[-1]
    new_caps.clear
    caps_array.rewind
  end
end

get_new_lower = message_array.each do |item| 
  if item.between?(97, 122)
     index = lower_array.find_index(item)
     shift_number = index + code_shift + 1
     make_new_lower_arrary = (shift_number).times do |i|
     i = lower_array.next
     new_lower.push(i)
     end 
    original_index = message_array.find_index(item)
    message_array[original_index] = new_lower[-1]
    new_lower.clear
    lower_array.rewind
  end
end


get_new_nums
get_new_caps
get_new_lower
 
 p new_nums
 p new_caps
 p message_array 
  
