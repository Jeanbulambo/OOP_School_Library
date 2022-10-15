require_relative './book'
require_relative './rental'
require 'json'

module Storage
  # books
  def save_book(book)
    json_book = JSON.generate({ title: book.title, author: book.author, id: book.id })
    File.write('books.json', "#{json_book}\n", mode: 'a')
  end

  def load_books(books)
    return unless if File.exist?('books.json')
                    File.foreach('books.json') do |line|
                      object = JSON.parse(line, object_class: OpenStruct)
                      books.push(Book.new(object.title, object.author, object.id))
                    end
                  end
  end

  # people
  def save_student(student)
    json_student = JSON.generate({ age: student.age, name: student.name, parent_permission: student.parent_permission,
                                   classroom: student.classroom, class: student.class.to_s, id: student.id })
    File.write('persons.json', "#{json_student}\n", mode: 'a')
  end

  def save_teacher(teacher)
    json_teacher = JSON.generate({ age: teacher.age, specialization: teacher.specialization, name: teacher.name,
                                   class: teacher.class.to_s, id: teacher.id })
    File.write('persons.json', "#{json_teacher}\n", mode: 'a')
  end

  def load_persons(persons)
    return unless if File.exist?('persons.json')
                    File.foreach('persons.json') do |line|
                      object = JSON.parse(line, object_class: OpenStruct)
                      if object.class == 'Student'
                        persons.push(Student.new(object.id, object.age, object.name, object.parent_permission,
                                                 object.classroom = ''))
                      elsif object.class == 'Teacher'
                        persons.push(Teacher.new(object.id, object.age, object.specialization, object.name))
                      end
                    end
                  end
  end

  # rentals
  def save_rentals(rental)
    p rental
    rentals_json = JSON.generate({ date: rental.date, book: rental.book.id, person: rental.person.id })
    File.write('rentals.json', "#{rentals_json}\n", mode: 'a')
  end

  def load_rentals(books, people)
    return unless if File.exist?('rentals.json')
                    File.foreach('rentals.json') do |line|
                      object = JSON.parse(line, object_class: OpenStruct)
                      book_id = books.find do |book|
                        book.id == object.book
                      end

                      person_id = people.find do |person|
                        person.id == object.person
                      end

                      rentals.push(Rental.new(object.date, book_id, person_id))
                    end
                  end
  end
end
