class Student

  attr_reader :id, :name, :gender, :gpa

  def initialize(id, name, gender, gpa)
    @id = id
    @name = name
    @gender = gender
    @gpa = gpa
  end

end

class StudentStrategy

  def execute(array)
    raise 'Abstract method called!'
  end

end

class Course

  def strategy=(new_strategy)
    if !new_strategy.is_a? StudentStrategy
      raise 'Invalid argument. Was expecting a StudentStrategy.'
    end
    @strategy = new_strategy
  end

  def initialize
    @students = []
    @strategy = nil
  end

  def add_student(student)
    @students.push(student)
  end

  def execute
    @strategy.execute(@students)
  end

end

class CountGenderStrategy < StudentStrategy

  def initialize(gender)
    @gender = gender
  end

  def execute(array)
    result = 0
    array.each do |student|
      if student.gender == @gender
        result += 1
      end
    end
    result
  end

end

class ComputeAverageGPAStrategy < StudentStrategy

  def execute(array)
    return nil if array.empty?
    gpa_sum = 0
    array.each do |student|
      gpa_sum += student.gpa
    end
    gpa_sum / array.length
  end

end

class BestGPAStrategy < StudentStrategy

  def execute(array)
    return nil if array.empty?
    best_student = array[0]
    array.each do |student|
      if student.gpa > best_student.gpa
        best_student = student
      end
    end
    best_student.name
  end

end
