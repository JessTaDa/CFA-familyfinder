# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(email: 'admin@familyfinder.com', password: 'asdasd', id:1)
user2 = User.create(email: 'sonny@email.com', password: 'asdasd', id:2)
user3= User.create(email: 'mummy@email.com', password: 'asdasd', id:3)
user4 = User.create(email: 'daddy@email.com', password: 'asdasd', id:4)
#
admin.add_role :admin
user2.add_role :user
user3.add_role :user
user4.add_role :user

user2 = User.find_by_email('sonny@email.com')
# list2 = student1.lists.first
# list_id2 = list2.id
user2.persons.create(name: 'sonny',age: 10, town: 'pixtown', relation: 'myself', missing:'false')
user2.persons.create(name: 'mummy',age: 40, town: 'pixtown', relation: 'mother', missing: 'true')
user2.persons.create(name: 'daddy',age: 45, town: 'pixtown', relation: 'father', missing: 'true')

user3.persons.create(name: 'mummy',age: 40, town: 'pixtown', relation: 'myself', missing:'false')
user3.persons.create(name: 'sonny',age: 10, town: 'pixtown', relation: 'son', missing: 'true')
user3.persons.create(name: 'daddy',age: 45, town: 'pixtown', relation: 'husband', missing: 'true')

user4.persons.create(name: 'daddy',age: 45, town: 'pixtown', relation: 'myself', missing:'false')
user4.persons.create(name: 'mummy',age: 40, town: 'pixtown', relation: 'wife', missing: 'true')
user4.persons.create(name: 'sonny',age: 10, town: 'pixtown', relation: 'son', missing: 'true')

# teacher = User.find_by_email('teacher1@gmail.com')
# list = teacher.lists.first
# list_id = list.id
# teacher.plans.create!(title: 'Koans', hours: '4', list_id: list_id)
# teacher.plans.create!(title: 'Read Michael Hartl Ruby On Rails', hours: '3', list_id: list_id)
# teacher.plans.create!(title: 'Solve Code wars', hours: '3', list_id: list_id)
# teacher.plans.create!(title: 'Work on airbnb project', hours: '1', list_id: list_id)
# teacher.plans.create!(title: 'Git projects everyday', hours: '1', list_id: list_id)
# teacher.plans.create!(title: 'Contribute to open source', hours: '1', list_id: list_id)
# teacher.plans.create!(title: 'Improve portfolio', hours: '2', list_id: list_id)
#
#
# student2 = User.find_by_email('student2@gmail.com')
# list3 = student2.lists.first
# list_id3 = list3.id
# student2.plans.create!(title: 'Rspec',type_of_study: 'Reading', hours: '1', list_id: list_id3)
# student2.plans.create!(title: 'Learn Git',type_of_study: 'Practicing', hours: '2', list_id: list_id3)
# student2.plans.create!(title: 'Stripe Payment',type_of_study: 'Reading', hours: '3', list_id: list_id3)
#
# student3 = User.find_by_email('student3@gmail.com')
# list4 = student3.lists.first
# list_id4 = list4.id
# student3.plans.create!(title: 'A-frame',type_of_study: 'Contributing', hours: '1', list_id: list_id4)
# student3.plans.create!(title: 'GO',type_of_study: 'Contributing', hours: '2', list_id: list_id4)
# student3.plans.create!(title: 'Python',type_of_study: 'Reading', hours: '3', list_id: list_id4)
