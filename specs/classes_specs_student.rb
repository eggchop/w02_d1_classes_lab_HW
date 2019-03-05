require('minitest/autorun')
require('minitest/rg')
require_relative('../classes')


class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Pim", "E29")
  end

  def test_student_name
    assert_equal("Pim", @student.name)
  end

  def test_student_cohort
    assert_equal("E29", @student.cohort)
  end

  def test_set_student_name
    @student.name = "Bob"
    assert_equal("Bob", @student.name)
  end

  def test_set_student_cohort
    @student.cohort= "E30"
    assert_equal("E30", @student.cohort)
  end

  def test_student_talk
    result = @student.talk
    assert_equal("I can talk", result)
  end

  def test_set_student_fav_lang
    result = @student.fav_lang("Ru")
    assert_equal("My fav lang is Ru", result)
  end

end
