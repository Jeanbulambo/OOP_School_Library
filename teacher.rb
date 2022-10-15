require 'securerandom'
require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(id, age, specialization, name = 'Unknown', parent_permission = 'true')
    super(age, name, parent_permission: parent_permission)
    @id = id || SecureRandom.random_number(1000)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
