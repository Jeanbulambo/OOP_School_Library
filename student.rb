require_relative './person'

class Student < Person
  def initialize(age, classroom = '', name = 'Unknown', parent_permission = 'true')
    super(age, name, parent_permission: parent_permission)
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
