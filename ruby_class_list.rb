class_list = []
continue = 'y'

while continue == 'y' do
	puts "would you like to add a student? (y)es or (n)o: "
	continue = gets.chomp.downcase[0]

	case continue
	when 'y'
		puts "Student's name: "
		name = gets.chomp
		class_list.push(name)
		puts "The current class list is #{class_list}"
	when 'n'
		puts "Class list: "
		class_list.sort.each_with_index do |item, index|
			puts "Student #{index+1}: #{item}"
		end
	else
		continue = 'y'
		puts "Enter a valid value"
	end
	
end

