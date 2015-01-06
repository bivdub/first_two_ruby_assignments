puts "Enter string to reverse: "
tempString = gets.chomp

i = 0;

while i < tempString.length do
	print tempString[tempString.length-1-i]
	i+=1
end
