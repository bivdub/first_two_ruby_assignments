def add nums
	nums[0] + nums[1]
end

def subtract nums
	nums[0] - nums[1]
end

def multiply nums
	nums[0] * nums[1]
end

def divide nums
	nums[0] / nums[1]
end

def get_nums
	puts "Number 1: "
	num1 = gets.chomp.to_f
	puts "Number 2: "
	num2 = gets.chomp.to_f
	return [num1, num2]
end


puts "which calc would you like to do (add, sub, mult, div): "
choice = gets.chomp.downcase

case choice
	when "add" || "a"
		puts "Your result is #{add(get_nums)}"
	when "sub" || "subtract" || "s"
		puts "Your result is #{subtract(get_nums)}"
	when "mult" || "multiply" || "m"
		puts "Your result is #{multiply(get_nums)}"
	when "div" || "divide" || "d"
		puts "Your result is #{divide(get_nums)}"
	else 
		puts "ERROR\n"*5
end