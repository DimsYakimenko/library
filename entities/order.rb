class Order
  include Validation

  attr_reader :book, :reader, :date

  def initialize(book, reader, date)
    @book = book
    @reader = reader
    @date = date#Date.parse(date)
    validate
  end

  private

  def validate
    validate_class!(@book, Book, 'book')
    validate_class!(@reader, Reader, 'author')
  end
end
