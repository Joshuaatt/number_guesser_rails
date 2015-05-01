class NumbersController < ApplicationController
  def index
    @numbers = Number.create
  end

  def create
  end

  def update
    @number = Number.find(params[:id])
    if @number.update(number_params)
      @first_number = @number.first_number
      @second_number = @number.second_number
      @guess = @number.guess
      @random_number = rand(@first_number..@second_number)
      if @first_number > @second_number
        flash[:notice] = "First number must be less than second number"
      elsif @guess == @random_number
        flash[:notice] = "You guessed correctly!"
      else
        flash[:notice] = "My number was #{@random_number}. Yours was #{@guess}. Please try again."
      end
      redirect_to :root
    end
  end

private
  def number_params
    params.require(:number).permit(:first_number, :second_number, :guess)
  end
end
