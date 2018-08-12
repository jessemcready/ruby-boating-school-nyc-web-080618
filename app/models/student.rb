class Student
  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end # add_boating_test

  def self.find_student(student_first_name)
    @@all.select do |student|
      student.first_name == student_first_name
    end
  end # self.find_student

end # end Student
