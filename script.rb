message = "Be sure to drink your ovaltine."
p message_array = message.bytes
code_shift = 3
num_array= Array(48..57)
caps_array = Array(65..90)
lower_array = Array(97..122)

index_values = message_array.map do |num| 
  if num_array.include?(num)
    index = num_array.find_index(num) 
    new_index = index + code_shift
      if new_index > 9
      new_index -= 10
      end
    new_num = num_array[new_index]
    elsif caps_array.include?(num)
        index = caps_array.find_index(num) 
        new_index = index + code_shift
          if new_index > 25
        new_index -= 26
          end
       new_num = caps_array[new_index]
    elsif lower_array.include?(num)
        index = lower_array.find_index(num) 
        new_index = index + code_shift
          if new_index > 25
          new_index -= 26
          end
        new_num = lower_array[new_index]
    else num
        end
    end

p index_values

p secret_message = index_values.map { |index| index.chr }.join("")