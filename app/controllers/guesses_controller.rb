class GuessesController < ApplicationController
  def index
# params ={"first_num"=>"9", "second_num"=>"10", "third_num"=>"11"}

#logic goes here

@list = Guess.all

g = Guess.new
g.first_num = params["first_number"]
g.second_num =params["second_number"]
g.third_num = params["third_number"]
g.outcome = @outcome
if g.first_num != nil
     g.save
   else
   end


@first = params["first_number"]
@second = params["second_number"]
@third = params["third_number"]

if @first == nil
    render("guesses/index.html.erb")
elsif @first < @second && @second < @third
  @outcome = "Yes!"
elsif
  @outcome = "No."
  end

    render("guesses/index.html.erb")


end

  def answer
    #params = {"q"=> "increasing numbers"}

    @user_answer = params["q"]

    render("guesses/answer.html.erb")
  end
end
