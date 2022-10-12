require_relative './nameable'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end
  # exporting data
  def export_json
    {
      'name' => @name,
      'age' => @age,
      'parent_permission' => @parent_permission
    }
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals.push(rental)
  end

  private

  def of_age?
    @age >= 18
  end
end
