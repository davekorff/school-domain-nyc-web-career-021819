class School

  attr_accessor :student_name, :student_grade
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end


  def add_student(student_name, student_grade)
    @student_name = student_name
    @student_grade = student_grade
    @roster[@student_grade.to_i] ||= []
    @roster[@student_grade.to_i] << @student_name
  end

  def grade(grade)
    @grade = grade
    @roster[@grade.to_i]
  end

  def sort
    @sorted = {}
    @roster.each do |grade, roster|
      @sorted[grade] = roster.sort
    end
    @sorted
  end

end
