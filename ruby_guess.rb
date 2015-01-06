number = 1 + rand(100)
guess = 0
counter = 0

while guess != number do
	puts "Guess the number: "
	guess = gets.chomp.to_i
	counter += 1

	if guess == number
		puts "You win! It took you #{counter} guesses!"
	elsif guess > number
		puts "Too high!"
	elsif guess < number
		puts "Too Low"
	else
		puts "ERROR"
	end
end