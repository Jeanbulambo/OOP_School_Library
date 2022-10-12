class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    book.rentals << self

    @person = person
    person.rentals << self
  end

  def export_json
    {
      'date' => @date,
      'book' => @book.export_json,
      'person' => @person.export_json
    }
  end
end
