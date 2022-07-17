class Library
  include Storage

  attr_reader :authors, :books, :readers, :orders

  def initialize
    @authors = read_yaml('authors')
    @books = read_yaml('books')
    @readers = read_yaml('readers')
    @orders = read_yaml('orders')
  end

  def add(object)
    case object
    when Author
      @authors << object
    when Book
      @books << object
    when Reader
      @readers << object
    when Order
      @orders << object
    end
  end

  def save
    save_to_yaml(@authors)
    save_to_yaml(@books)
    save_to_yaml(@readers)
    save_to_yaml(@orders)
  end
end
