class NumbersController < ApplicationController
  def index
    @numbers = Number.create
  end

  def create
  end

  def update
    @number = Number.find(params[:id])
    if @number.update(number_params) && @number.is_valid?
      random_number = @number.random_number
      guess = @number.guess
      if @number.winner?
        flash[:notice] = "You guessed correctly!"
      else
        flash[:notice] = "My number is #{random_number}. Yours is #{guess}. Please try again."
      end
    else
      flash[:notice] = "Please enter numbers in every field."
    end
    redirect_to :root
  end

private
  def number_params
    params.require(:number).permit(:first_number, :second_number, :guess)
  end
end
