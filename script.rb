message = "Be sure to drink your ovaltine."
code_shift = 5
num_cycle = Array(48..57).cycle(1)
caps_cycle = Array(65..90).cycle(1)
lower_cycle = Array(97..122).cycle(1)

p message_array = message.bytes

shifted_values = message_array.map do |num| 
  if num_cycle.include?(num) || caps_cycle.include?(num) || lower_cycle.include?(num)
   p num = num + code_shift
  else num = num
  end
end

p shifted_values
