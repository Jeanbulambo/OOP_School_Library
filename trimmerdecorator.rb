require_relative './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name[1...10]
  end
end
