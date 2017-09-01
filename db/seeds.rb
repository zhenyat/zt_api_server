# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create name: 'hardware', title: 'Аппаратные средства'
Category.create name: 'software', title: 'Программное обеспечение'

category_id = Category.find_by(name: 'hardware').id
Subject.create category_id: category_id, name: 'gadgets', title: 'Гаджеты', abstract: 'Устройства', description: 'Описание различных гаджетов. Продукция разных производителей'
Subject.create category_id: category_id, name: 'pc', title: 'ПК', abstract: 'Персональные компьютеры', description: 'Персональные компьютеры HP, Lenovo, ASUS - сравнительный анализ'

category_id = Category.find_by(name: 'software').id
Subject.create category_id: category_id, name: 'os', title: 'ОC', abstract: 'Операционные системы', description: 'Описание различных операционных систем. Рассматриваются актуальные версии.'
Subject.create category_id: category_id, name: 'apps', title: 'Приложения', abstract: 'Программные приложения', description: 'Приложения для разрабочиков и пользователей'
