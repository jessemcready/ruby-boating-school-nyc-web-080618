class BoatingTest
  attr_reader :student, :instructor
  attr_accessor :name, :status
  @@all = []

  def initialize(student, name, status, instructor)
    @student = student
    @name = name
    @status = status
    @instructor = instructor
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

end # BoatingTest
