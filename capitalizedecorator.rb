require_relative './decorator'

class CapitalizeDecor < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
