class School
  def initialize
    @students = {}
  end

  def students(grade)
    @students[grade.to_s] ||= []
  end

  def add(name, grade)
    students(grade) << name
    @students[grade.to_s].sort!
  end

  def students_by_grade
    everyone = []
    @students.each do |grade, students|
      everyone << { grade: grade.to_i, students: students }
    end
    everyone.sort_by { |hash| hash[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
