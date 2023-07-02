class Student
  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected
  attr_reader :grade

end

bob = Student.new('Bob', 90)
joe = Student.new('Joe', 100)

puts bob.name
puts "Well done!" if joe.better_grade_than?(bob)