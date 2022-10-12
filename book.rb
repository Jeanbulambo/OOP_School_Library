class Book
  attr_reader :rentals
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def export_json
    {
      'Title' => @title,
      'Author' => @author
    }

  def add_rental(date, person)
    Rental.new(date, self, person)
  end
end
