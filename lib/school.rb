class School
  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] << student if @roster[grade]
    @roster[grade] ||= [student]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value {|grade| grade.sort!}
  end



end
