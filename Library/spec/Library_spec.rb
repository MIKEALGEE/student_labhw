require_relative('../Library')
require('minitest/rg')
require('minitest/autorun')

class TestLibrary < Minitest::Test


  def setup

@books = [
      {
      title: "Charlie and Choc factory",
      rental_details:{
      student_name: "Emma",
      date: "01/11/18"
      },
    },
   {
     title: "Alice in Wonderland",
     rental_details:{
     student_name: "Jeff",
     date: "01/12/16"
     },
   },
    {
    title: "Harry Potter: Goblet of Fire",
    rental_details:{
    student_name: "Caity",
    date: "01/10/17"
     },
   },
   {
    title: "Lord of The Rings",
    rental_details:{
    student_name: "Graham",
    date: "01/01/17"
    },
   }
]

@library = Library.new(@books)
  end


def test_return_books()
assert_equal(@books, @library.books)
end


def test_book_info__book_found
  found_book = @library.book_info("Alice in Wonderland")
  assert_equal(found_book, @books[1])
end


def test_provide_rent_details
rent_details = @library.provide_rent_details("Harry Potter: Goblet of Fire")
assert_equal(rent_details, @books[2][:rental_details])
end















end
