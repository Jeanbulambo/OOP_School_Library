require_relative './person'
require_relative './teacher'
require_relative './student'
require_relative './storage'

class Persons
  include Storage
  attr_accessor :people

  def initialize
    @people = []
  end

  def create_people
    print 'Do you want to create a student (1) or a teacher (2)? Please select a related option: '
    option = gets.chomp

    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Please enter a valid input'
      nil
    end
  end

  def create_student
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp
    parent_permission = parent_permission.downcase == 'y'

    student = Student.new(nil, age, name, parent_permission)
    @people.push(student)
    save_student(student)
    puts 'Student added successfully'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(nil, age, specialization, name)
    @people.push(teacher)
    save_teacher(teacher)
    puts 'Teacher added successfully'
  end

  def list_people
    if @people.empty?
      puts "The person's list is empty"
      return
    end
    @people.map do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end
end
