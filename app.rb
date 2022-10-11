require_relative 'books'
require_relative 'persons'
require_relative 'rentals'
require 'date'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = Books.new
    @people = Persons.new
    @rentals = Rentals.new
  end
end
