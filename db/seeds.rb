# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

seducation = ['High School', 'Some college', 'Undergrade']
ieducation = ['Master', 'Phd']

150.times {
  student = Student.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(18, 25),
    education: seducation.shuffle[0],
    cohort_id: 0
  )
  match = Student.find_by(first_name: student.first_name)
  if !match
    student.save
  end
}

20.times {
  instructor = Instructor.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(35, 55),
    education: ieducation.shuffle[0],
    salary: Faker::Number.between(50000, 100000)
  
  )
    p instructor
  match = Instructor.find_by(first_name: instructor.first_name)
  if !match
    instructor.save
  end
}
