# Rules:
# Rock destroys scissors.
# Scissors cut paper.
# Paper covers rock.
def compare (choice1, choice2)
	if (choice1 == choice2) then
		return "The result is a tie!"
	elsif (choice1 == "rock") then
		if (choice2 == "scissors") then
			return "rock wins"
		else
			return "paper wins"
		end
	elsif (choice1 == "paper") then
		if (choice2 == "rock") then
			return "paper wins"
		else
			return "scissors wins"
		end
	else
	end
end


def generate_computer_choice
	computer_choice = rand
	if (0 < computer_choice && computer_choice < 0.33) then
		return "rock"
	elsif (0.34 < computer_choice && computer_choice < 0.66) then
		return "paper"
	else
		return "scissors"
	end
end


loop do
	print "Do you choose rock, paper or scisors? "
	user_choice = gets.chomp
	#puts user_choice
	computer_choice = generate_computer_choice
	puts "Computer choose: " + computer_choice
	result = compare(user_choice, computer_choice)
	puts result
	if (result != "The result is a tie!") then
		exit
	end
end
