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
user2.persons.create(name: 'Sonny',age: 10, town: 'Battambang', story:'I got seperated from my parents when we were evacuated from our home in Phnom Penh. I escaped to a Thai refugee camp and now reside in Belgium', relation: 'myself', missing:'false')
user2.persons.create(name: 'Mummy',age: 40, town: 'Battambang', story:'My father went to look for my mother after she failed to return from work in the Battambang province. We never saw her again.', relation: 'mother', missing: 'true')
user2.persons.create(name: 'Daddy',age: 45, town: 'Battambang', story:'My father was a former policeman. The Khmer Rouge evacuated my father to the Battambang province. After 1979, my mother went to search for him there. Someone told my mom that he was tied up and led west towards Phnom Penh. She assumed he died because my father never returned.', relation: 'father', missing: 'true')

user3.persons.create(name: 'Mummy',age: 40, town: 'Battambang', story:'I am searching for my son who went missing by the river as we were trying to escape sometime after 1978.' , relation: 'myself', missing:'false')
user3.persons.create(name: 'Sonny',age: 10, town: 'Battambang', story:'The last time I saw him was near the river north of Battambang town center. I was taken by soldiers and I lost sight of him. I hope he is still alive.', relation: 'son', missing: 'true')
user3.persons.create(name: 'Daddy',age: 45, town: 'Battambang', story:'The Khmer Rouge took my husband for questioning and he never came back. A villager said they saw him being beaten by soldiers and tied to a tree. I have not seen him since that day in 1978', relation: 'husband', missing: 'true')

user4.persons.create(name: 'Daddy',age: 45, town: 'Battambang', story:'I am from the Battambang province and was seperated from my family in a crowd south of the Battambong river in 1978', relation: 'myself', missing:'false')
user4.persons.create(name: 'Mummy',age: 40, town: 'Battambang', story:'My wife went to get rice for my son and never came back. I hope she is still alive. I have searched everywhere for her. ', relation: 'wife', missing: 'true')
user4.persons.create(name: 'Sonny',age: 10, town: 'Battambang', story:'My son was 10 when he did not come home from school in 1978. Some of the other boys were taken to a child labour camp. I have tried to search for him but with no luck.', relation: 'son', missing: 'true')

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
