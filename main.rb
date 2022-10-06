require './app'

class Apps
  def self.menu
    puts 'Welcome to the School Library'
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
      result.list_books
    when 2
      result.list_people
    when 3
      result.create_people
    when 4
      result.create_book
    when 5
      result.create_rental
    when 6
      result.list_rentals
    when 7
      puts 'Thank you for using the app!'
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
