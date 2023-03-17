message = 'Xa oqna pk znejg ukqn Krwhpeja.'
message_array = message.bytes
code_shift = 4
lower_array = Array(97..122).cycle
caps_array = Array(65..90).cycle
num_array = Array(48..57).cycle

new_message_values = []
temp_array = []

message_array.map { |item|  
  if item.between?(97, 122)
     array = lower_array
  elsif item.between?(65, 90)
     array = caps_array
  elsif item.between?(48, 57)
     array = num_array  
  end
   
  if item.between?(97, 122) || item.between?(65, 90) || item.between?(48, 57)
    index = array.find_index(item)
    shift_number = index + code_shift + 1
    shift_number.times do |i|
      i = array.next
      temp_array.push(i)  
       end
      new_value = temp_array[-1]
      temp_array.clear
      array.rewind
   else
     new_value = item
   end
     new_message_values.push(new_value)
  }  

message_array.replace(new_message_values)
secret_message = message_array.map { |value| value.chr }.join('')
puts "\nThe secret message is ...  \n\n'#{secret_message}'"