require_relative 'book'

class Books
  attr_accessor :books

  def initialize
    @books = []
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books.push(book)

    puts 'Book created successfully'
  end

  def list_books
    if @books.empty?
      puts 'No book added in the list yet'
      return
    end
    @books.map do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end
end
