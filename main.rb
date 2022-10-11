require './app'

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

  result = App.new

  loop do
    case menu
    when 1
      result.books.list_books
    when 2
      result.people.list_people
    when 3
      result.people.create_people
    when 4
      result.books.create_book
    when 5
      result.rentals.create_rental(result.books.books, result.people.people)
    when 6
      result.rentals.list_rentals(result.people.people)
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
