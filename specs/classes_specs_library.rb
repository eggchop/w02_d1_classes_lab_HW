require('minitest/autorun')
require('minitest/rg')
require_relative('../classes')


class TestLibrary < MiniTest::Test
  
  def setup
    @library = Library.new
    @library.books = [{
      title: "game_of_chess",
      rental_details: {
        student_name: "Tad",
        date: "01/11/15"}
      },
      {
      title: "this book is great",
      rental_details: {
        student_name: "test_set_student_fav_lang",
        date: "01/11/18"}
      },
      {
      title: "game_of_the_thrones",
      rental_details: {
        student_name: "Bob",
        date: "02/12/16"}
        }]

    @book = {title: "game_of_the_thrones",rental_details: {student_name: "Bob",date: "02/12/16"}}
    @new_rental_details = { title: "game_of_the_thrones", rental_details: {student_name: "Tom", date: "00000"}}
    @new_book = { title: "Xmen", rental_details: {student_name: "", date: ""}}
  end

  def test_find_book
    result = @library.find_book("game_of_the_thrones")
    assert_equal(@book, result )
  end

  def test_find_book_rental_details
    result = @library.find_book_rental_details("game_of_the_thrones")
    assert_equal(@book[:rental_details], result )
  end

  def test_add_book_by_title
    @library.add_book_by_title("Xmen")
    assert_equal(@new_book, @library.books[-1])
  end

  def test_change_rental_details
    @library.change_rental_details("game_of_the_thrones", @new_rental_details)
    result = @library.find_book("game_of_the_thrones")
    assert_equal(@new_rental_details, result)
  end

end
