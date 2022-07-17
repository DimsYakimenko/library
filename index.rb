require './autoload'

author = Author.new('John Doe')
book = Book.new('Ruby', author)
reader = Reader.new('Kek', 'email@email.com', 'city', 'street', 4)
order = Order.new(book, reader, '06.06.2022')

library = Library.new
library.add(author)
library.add(book)
library.add(reader)
library.add(order)
library.save

puts library.orders.first.book.title
