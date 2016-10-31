class GuessesController < ApplicationController
  def index
# params ={"first_num"=>"9", "second_num"=>"10", "third_num"=>"11"}

#logic goes here

@list = Guess.all


g = Guess.new
g.first_num = params["first_number"]
g.second_num =params["second_number"]
g.third_num = params["third_number"]
g.save


@first = params["first_number"]
@second = params["second_number"]
@third_num = params["third_number"]


if @first_num == nil
    render("guesses/index.html.erb")
elsif @first_num < @second_num && @second_num < @third_num
  @outcome = "Yes!"
elsif
  @outcome = "No."
  end

end

  def answer
    #params = {"q"=> "increasing numbers"}

    @user_answer = params["q"]

    render("guesses/answer.html.erb")
  end
end
