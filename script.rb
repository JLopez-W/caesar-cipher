message = "Be sure to drink your ovaltine."
shift = 1

p message_array = message.split("")

def secret_message(message_array, shift)
  message_array.bytes do |num|
    if num.between?(65, 90) || num.between?(97, 122) 
      puts (num + shift).chr
    elsif
      puts num.chr
    end 
  end
end

secret_message(message, shift)