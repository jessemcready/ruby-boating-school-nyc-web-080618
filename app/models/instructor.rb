class Instructor
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
  end # initialize

  def self.all
    @@all
  end # self.all

  def self.pass_student(student_name, test_name)
    boat_test = BoatingTest.all.select do |boating_test|
      boating_test.name == test_name && boating_test.student.first_name == student_name
    end # BoatingTest.all.select
    boat_test[0].status = "passed"
  end # self.pass_student

  def self.fail_student(student_name, test_name)
    boat_test = BoatingTest.all.select do |boating_test|
      boating_test.name == test_name && boating_test.student.first_name == student_name
    end # BoatingTest.all.select
    boat_test[0].status = "failed"
  end # self.fail_student

  def self.student_grade_percentage(student_name)
    student_boat_tests = student_tests(student_name)
    passed_test_counter = 0
    student_boat_tests.each do |boat_test|
      if boat_test.status == "passed"
        passed_test_counter += 1
      end # if boat_test.status
    end # student_boat_tests.each
    percentage = (passed_test_counter.to_f / student_boat_tests.length.to_f) * 100
    puts "#{student_name} has passed #{percentage}% of their tests."
  end # self.student_grade_percentage

  def self.student_tests(student_name)
    BoatingTest.all.select do |boat_test|
      boat_test.student.first_name == student_name
    end # BoatingTest.all.select
  end # self.student_tests

end # Instructor
