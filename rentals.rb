require_relative 'rental'

class Rentals
  def initialize
    @rentals = []
  end

  def create_rental(books, people)
    if books.size.zero?
      puts 'No Books Available'
    elsif people.size.zero?
      puts 'No Person Available'
    else
      puts 'Select a book from the following list by number'
      books.each_with_index { |book, index| puts "#{index}) Book Title: #{book.title}, Author: #{book.author}" }
      rental_book = gets.chomp.to_i
      puts 'Select a person from the following list by number (not id)'
      people.each_with_index do |person, index|
        puts "#{index}) Name: #{person.name} Age: #{person.age} Id: #{person.id}"
      end
      rental_person = gets.chomp.to_i
      puts 'Enter date in format YYYY-MM-DD'
      date = gets.chomp.to_s
      rental_detail = Rental.new(date, books[rental_book], people[rental_person])
      @rentals.push(rental_detail)
      puts 'Rental Successfully Created'
    end
  end

  def list_rentals(people)
    puts 'Select id of any person'
    people.each { |i| puts "id: #{i.id}, Person: #{i.name}" }
    print 'Person id: '
    person_id = gets.chomp
    @rentals.each do |i|
      puts "Date: #{i.date}, Book: '#{i.book.title}' by #{i.book.author}" if i.person.id.to_i == person_id.to_i
    end
  end

end
