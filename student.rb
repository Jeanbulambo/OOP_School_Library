require_relative './person'

class Student < Person
  def initialize(age, name = 'Unknown', parent_permission = 'true', classroom = '')
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def export_json
    {
      'id' => @id,
      'name' => @name,
      'age' => @age,
      'parent_permission' => @parent_permission,
      'classroom' => @classroom
    }
  end

  def play_hook
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom classroom.students.include?(self)
  end
end
