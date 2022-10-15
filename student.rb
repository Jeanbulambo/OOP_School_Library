require 'securerandom'
require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(id, age, name = 'Unknown', parent_permission = 'true', classroom = '')
    super(age, name, parent_permission: parent_permission)
    @id = id || SecureRandom.random_number(1000)
    @classroom = classroom
  end

  def play_hook
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom classroom.students.include?(self)
  end
end
