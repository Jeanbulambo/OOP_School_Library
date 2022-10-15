require './app'
require './storage'

class Apps
  def self.menu
    puts 'Welcome to our School Library'
    puts "\n"
    puts 'Please select an option by entering a number: '

    @list = {
      '1' => 'List all books',
      '2' => 'List all people',
      '3' => 'Create a person',
      '4' => 'Create a book',
      '5' => 'Create a rental',
      '6' => 'List all rentals for a given person id',
      '7' => 'Exit'
    }

    @list.each do |index, string|
      puts "#{index} - #{string}"
    end
    Integer(gets.chomp)
  end

  app = App.new
  app.books.load_books(app.books.books)
  app.people.load_persons(app.people.people)
  app.rentals.load_rentals(app.books.books, app.people.people)

  loop do
    case menu
    when 1
      app.books.list_books
    when 2
      app.people.list_people
    when 3
      app.people.create_people
    when 4
      app.books.create_book
    when 5
      app.rentals.create_rental(app.books.books, app.people.people)
    when 6
      app.rentals.list_rentals(app.people.people)
    when 7
      puts 'Thank you for using this app!'
      exit
    else
      puts 'Choose a number between 1 to 7'
    end
  end
end

def main
  Apps.new
end

main
