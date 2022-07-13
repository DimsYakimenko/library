class Library
  include Storage

  require './autoload'

  attr_reader :authors, :books, :readers, :orders

  def initialize
    @authors = YAML.load_file(("./data/authors.yml"), permitted_classes: [Author])
    @books = YAML.load_file(("./data/books.yml"), permitted_classes: [Book, Author])
    @readers = YAML.load_file(("./data/readers.yml"), permitted_classes: [Reader])
    @orders = YAML.load_file(("./data/orders.yml"), permitted_classes: [Book, Author, Order, Reader, Date])
  end

  # def add(object)
  #   case object
  #   when Author
  #     @authors << object
  #   when Book
  #     @books << object
  #   when Reader
  #     @readers << object
  #   when Order
  #     @orders << object
  #   end
  # end

  def save
    save_to_yaml(@authors)
    save_to_yaml(@books)
    save_to_yaml(@readers)
    save_to_yaml(@orders)
  end
end
