message = "Be sure to drink your Ovaltine."
message_array = message.bytes
code_shift = 12
lower_array = Array(97..122).cycle
caps_array = Array(65..90).cycle
num_array = Array(48..57).cycle

new_message_values = []
new_nums = []
new_caps = []
new_lower = []

get_new_values = message_array.map { |item|  
  if item.between?(97, 122)
    index = lower_array.find_index(item)
    shift_number = index + code_shift + 1 
      (shift_number).times do |i|
        i = lower_array.next
        new_lower.push(i) 
        end
    new_value = new_lower[-1]
    new_message_values.push(new_value)
    new_lower.clear
    lower_array.rewind
  elsif item.between?(65, 90)
    index = caps_array.find_index(item)
    shift_number = index + code_shift + 1 
      (shift_number).times do |i|
        i = caps_array.next
        new_caps.push(i) 
        end
    new_value = new_caps[-1]
    new_message_values.push(new_value)
    new_caps.clear
    caps_array.rewind
  elsif item.between?(48, 57)
    index = num_array.find_index(item)
    shift_number = index + code_shift + 1 
      (shift_number).times do |i|
        i = num_array.next
        new_nums.push(i) 
        end
    new_value = new_nums[-1]
    new_message_values.push(new_value)
    new_nums.clear
    num_array.rewind
        else 
     new_value = item
     new_message_values.push(new_value)
  end
  }

message_array.replace(new_message_values)
secret_message = message_array.map { |value| value.chr }.join("")
p "The secret message is ...  '#{secret_message}' "