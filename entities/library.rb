class Library
  include Storage

  attr_reader :author, :book, :reader, :order

  def initialize
    @authors = []
    @books = []
    @readers = []
    @orders = []
  end

  def add(object)
    case object
    when Author
      @author << object
    when Book
      @book << object
    when Reader
      @reader << object
    when Order
      @order << object
    end
  end

  def save
    save_to_yaml(@author)
    save_to_yaml(@book)
    save_to_yaml(@reader)
    save_to_yaml(@order)
  end
end
