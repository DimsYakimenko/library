require './autoload'

author = Author.new('John Doe')
book = Book.new('Ruby', author)
reader = Reader.new('Kek', 'email@email.com', 'city', 'street', 4)
order = Order.new(book, reader, Time.now)

puts order.book.title
puts order.reader.name
puts order.book.author.name
