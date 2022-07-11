class Library
  include Storage

  attr_reader :author, :book, :reader, :order

  def initialize
    @author = []
    @book = []
    @reader = []
    @order = []
  end

  def add(object)
    case object
    when author
      @author << object
    when book
      @book << object
    when reader
      @reader << object
    when order
      @order << object
    end
  end

  def save
    if @author.size > 0
      save_to_yaml(@author)
    elsif @book.size > 0
      save_to_yaml(@book)
    elsif @reader.size > 0
      save_to_yaml(@reader)
    elsif @order.size > 0
      save_to_yaml(@order)
    end
  end
end
