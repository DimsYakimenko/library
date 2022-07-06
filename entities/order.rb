class Order
  include Validation

  attr_reader :book, :reader, :date

  def initialize(book, reader, date)
    @book = book
    @reader = reader
    @date = date
    validate
  end

  private

  def validate
    validate_class_book(@book)
    validate_class_reader(@reader)
    validate_class_date(@date)
  end
end
