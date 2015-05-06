class Number < ActiveRecord::Base

  def is_valid?
    if first_number && second_number && guess
      true
    else
      false
    end
  end

  def range
    if first_number > second_number
      range = second_number..first_number
    else
      range = first_number..second_number
    end
  end

  def random_number
    random_number = rand(range)
  end

  def winner?
    if guess == random_number
      true
    end
  end
end
