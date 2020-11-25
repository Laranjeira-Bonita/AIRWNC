# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'laranjeira@email.com', first_name: "laranjeira", last_name: "bonita", cpf: "000.000.000-00", phone_number: "(00)00000-0000", password: "123456")
User.create(email: 'marcela@email.com', first_name: "marcela", last_name: "bonita", cpf: "111.111.111-11", phone_number: "(11)11111-1111", password: "123456")
User.create(email: 'luiza@email.com', first_name: "luiza", last_name: "bonita", cpf: "222.222.222-22", phone_number: "(22)22222-2222", password: "123456")
User.create(email: 'augusto@email.com', first_name: "augusto", last_name: "bonito", cpf: "333.333.333-33", phone_number: "(33)33333-3333", password: "123456")
User.create(email: 'joao@email.com', first_name: "joao", last_name: "bonito", cpf: "444.444.444-44", phone_number: "(44)44444-4444", password: "123456")
User.create(email: 'maria@email.com', first_name: "maria", last_name: "bonita", cpf: "555.555.555-55", phone_number: "(55)55555-5555", password: "123456")

Bathroom.create(price: 100, description: "Limpo e aconchegante", address: "Rua dos bobos, 0", user_id: 5)
Bathroom.create(price: 150, description: "Faça suas necessidades com vista para o mar", address: "Rua dos bobos, 0", user_id: 5)
Bathroom.create(price: 90, description: "Estilo vintage", address: "Rua dos bobos, 0", user_id: 5)
Bathroom.create(price: 50, description: "Ambiente agradável", address: "Meio do nada", user_id: 6)
Bathroom.create(price: 10, description: "Você não precisa mais do que isso", address: "Meio do nada", user_id: 6)
Bathroom.create(price: 20, description: "Sei lá", address: "Meio do nada", user_id: 6)