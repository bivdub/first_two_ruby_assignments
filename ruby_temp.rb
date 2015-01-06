def celsius_convert 
	puts "Enter Temperature: "
	temp = gets.chomp.to_f
	new_temp = (temp * 9 / 5 + 32).round(2)
	puts "#{temp}\xC2\xB0C is equal to #{new_temp}\xC2\xB0F"
end

def farenheit_convert 
	puts "Enter Temperature: "
	temp = gets.chomp.to_f
	new_temp = ((temp - 32) * 5 / 9).round(2)
	puts "#{temp}\xC2\xB0F is equal to #{new_temp}\xC2\xB0C"
end

puts "Enter '1' for Celsius to Farenheit or '2' for Farenheit to Celsius: "
select = gets.chomp

case select
when '1'
	celsius_convert
when '2'
	farenheit_convert
else 
	puts "Reboot and select a correct choice!"
end