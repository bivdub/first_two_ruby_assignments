balance = 3000.00

puts "Your balance is #{balance}."
continue = "y"

while continue == "y" do
	puts "Would you like to (W)ithdraw, (D)eposit, or (C)heck_balance? "
	selection = gets.chomp.downcase[0]

	case selection
	when "w"
		puts "How much would you like to withdraw: "
		num = gets.chomp.to_f.round(2)
		if num <= balance
			balance -= num
			puts "New Balance: #{balance}"
		else
			puts "Insufficient Funds. Please try again."
		end
	when 'd'
		puts "How much would you like to deposit: "
		num = gets.chomp.to_f.round(2)
		balance += num
		puts "New Balance: #{balance}"
	when 'c'
		puts "Balance: #{balance}"
	end

	puts "Do you have more transactions? (y)es or (n)o: "
	continue = gets.chomp.downcase[0]
end