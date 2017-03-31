Student = Struct.new(:first_name, :last_name, :grade) do
  attr_reader :first_name, :last_name
  def senior?
    @grade == 12
  end

  def junior?
    @grade == 10
  end
end

roman = Student.new("Roman","Liubinets")
roman.first_name

=begin
def seniors(students)
  senior_students =[]
  students.each do |student|
  if student.senior?
    senior_students.push(student)
  end
end
return senior_students
end

def seniors(students)
  students.select {|student| student.senior?}
end

def juniors(student)
  student.select {|student| student.junior?}
end


fred = Student.new("Fred", "James", 12)
sarah = Student.new("Sarah", "Smith", 12)
jack = Student.new("Jack", "Gong", 10)

all_students = [fred, sarah, jack]

#all_students.each do |student|
#  puts student
#end

#seniors(all_students).each do |student|
#  puts student
#end

juniors(all_students).each do |student|
  puts student
end
=end
