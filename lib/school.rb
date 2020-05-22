class School
  attr_reader :name, :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << "#{name}"
    else
      @roster[grade] << "#{name}"
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster = @roster.collect do |grade, students|
      #students.sort
      @roster[grade].sort
      #@roster
    end
    @roster
  end
end
