message = "Be sure to drink your ovaltine."
shift = 1

p message_array = message.split("")

def secret_message(message_array, shift)
  coded_message = []
  message_array.bytes do |num|
    if num.between?(48, 57) || num.between?(65, 90) || num.between?(97, 122) 
      coded_message.push(num + shift)
    elsif
      coded_message.push(num)
    end 
  end
  p coded_message
end

secret_message(message, shift)