require 'sinatra'

require_relative 'convert'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
  return 'Hello world'
end

number = rand(1..100)
num_guesses = 0

get '/number_guessing/' do
  erb :number_guessing, :locals => {'result' => '', 'num_guesses' => num_guesses}
end

post '/number_guessing/' do
	guess = params[:guess]

	num_guesses += 1
	result = compare(guess.to_i, number)
	erb :number_guessing , :locals => {'result' => result, 'num_guesses' => num_guesses}
end

get '/convert/' do
	erb :convert, :locals => {'result' => ''}
end

post '/convert/' do
	amount_chf = params[:amount_chf]
	target = params[:target]

	result = convert(amount_chf, target)
	erb :convert, :locals => {'result' => result}
end

def compare(guess, number)
	unless guess == number
		if guess > number
			return "Too high"
		else
			return "Too low"
		end
	else
		return "You got it!"
	end
end
