require 'sinatra'

class App < Sinatra::Base

  get '/dice' do 
    dice_roll = rand(1..6)
    "<h2>You rolled a #{dice_roll}</h2>"
  end

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    sum = num1 + num2
    { result: sum }.to_json
  end

end
  
run App
