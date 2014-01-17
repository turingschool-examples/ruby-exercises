class ReadingList
  BOOKS = ["1984", "The Hobbit", "I, Robot"]

  attr_reader :books

  def initialize
    @books = ReadingList::BOOKS
  end

  def <<(book)
    @books << book
  end
end
