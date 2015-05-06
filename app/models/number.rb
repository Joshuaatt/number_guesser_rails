class Number < ActiveRecord::Base

  def is_valid?
    if self.first_number && self.second_number && self.guess
      return true
    else
      false
    end
  end

  def range
    if self.first_number > self.second_number
      range = self.second_number..self.first_number
    else
      range = self.first_number..self.second_number
    end
  end

  def random_number
    random_number = rand(range)
  end

  def winner?
    if self.guess == random_number
      true
    end
  end
end
