require 'securerandom'

class Book
  attr_reader :id
  attr_accessor :title, :author, :rentals

  def initialize(title, author, id)
    @id = id || SecureRandom.random_number(1000)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end
end
