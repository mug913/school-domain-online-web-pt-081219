require 'pry'

class School 
  
  def initialize(school_name)
    @school_name = school_name 
    @roster = {} 
  end 
  
  def roster 
    @roster 
  end
  
   def add_student(student_name, grade)
     if !roster[grade]
     roster[grade] = [] 
     roster[grade] << student_name 
   else 
     roster[grade] << student_name
   end
  end 
  
  def grade(grade) 
    roster[grade] 
  end 
  
  def sort
    sorted_grade = []
    roster.each do |grade|  
      sorted_grade = [grade].sort 
      return sorted_grade
    end
  end
end