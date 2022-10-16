require_relative '../book'

describe Book do
  context 'When creating a Book' do
    book = Book.new('Harry Potter', 'J.K.R.', nil)

    it "It should return 'Harry Potter' as the Book title " do
      expect(book.title).to eq 'Harry Potter'
    end

    it "It should return 'J.K.R.' as the Book author " do
      expect(book.author).to eq 'J.K.R.'
    end
  end
end
