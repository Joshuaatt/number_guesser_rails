class Number < ActiveRecord::Base

  def valid_number
    if self.to_i.to_s == self
      self.to_i
    end
  end
end
