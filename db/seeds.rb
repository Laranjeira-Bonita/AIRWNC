require 'open-uri'


# User seeds
u1 = User.create!(email: 'laranjeira@email.com', 
              first_name: "laranjeira", 
              last_name: "bonita", 
              cpf: "000.000.000-00", 
              phone_number: "(00)00000-0000", 
              password: "123456")
file1= URI.open('https://ca.slack-edge.com/T02NE0241-U01C8ATLURL-7adf44f6db07-512')
u1.photo.attach(io: file1, filename: 'user1.png', content_type: 'image/png')

u2 = User.create!(email: 'marcela@email.com', 
                 first_name: "marcela", 
                 last_name: "marotta", 
                 cpf: "111.111.111-11", 
                 phone_number: "(11)11111-1111", 
                 password: "123456")
file2 = URI.open('https://ca.slack-edge.com/T02NE0241-U01D4SEMHL0-5bff3aeeae7f-512')
u2.photo.attach(io: file2, filename: 'user2.png', content_type: 'image/png')

u3 = User.create!(email: 'luiza@email.com',
                 first_name: "luiza", 
                 last_name: "toledo", 
                 cpf: "222.222.222-22", 
                 phone_number: "(22)22222-2222", 
                 password: "123456")
file3 = URI.open('https://ca.slack-edge.com/T02NE0241-U01C7U49X46-155e289c591e-512')
u3.photo.attach(io: file3, filename: 'user3.png', content_type: 'image/png')

u4 = User.create!(email: 'augusto@email.com', 
                 first_name: "augusto", 
                 last_name: "araújo", 
                 cpf: "333.333.333-33", 
                 phone_number: "(33)33333-3333", 
                 password: "123456")
file4 = URI.open('https://ca.slack-edge.com/T02NE0241-U01D4FKS1DE-7495051c3457-512')
u4.photo.attach(io: file4, filename: 'user4.png', content_type: 'image/png')

u5 = User.create!(email: 'joao@email.com', 
                 first_name: "joao", 
                 last_name: "silva", 
                 cpf: "444.444.444-44", 
                 phone_number: "(44)44444-4444", 
                 password: "123456")
file5 = URI.open('https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80')
u5.photo.attach(io: file5, filename: 'user5.png', content_type: 'image/png')

u6 = User.create!(email: 'maria@email.com', 
                 first_name: "maria", 
                 last_name: "fernandes", 
                 cpf: "555.555.555-55", 
                 phone_number: "(55)55555-5555", 
                 password: "123456")
file6 = URI.open('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
u6.photo.attach(io: file6, filename: 'user6.png', content_type: 'image/png')

# Bathroom seeds
b1 = Bathroom.new(price: 4, title: "Banheiro cheiroso", description: "Sempre limpo, espaçoso e com amenidades", address: "Rua Purpurina, 277, São Paulo")
b1.owner = u6
b1.save!
url1 = 'https://images.unsplash.com/photo-1552321554-5fefe8c9ef14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1868&q=80'
url2 = 'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
b1.photos.attach(io: URI.open(url1), filename: 'bathroom1.png', content_type: 'image/png')
b1.photos.attach(io: URI.open(url2), filename: 'bathroom2.png', content_type: 'image/png')

url3 = 'https://images.unsplash.com/photo-1507652313519-d4e9174996dd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
b2 = Bathroom.new(price: 4.5, title: "Banheiro com bela vista", description: "Faça suas necessidades com vista para o mar", address: "Rua Cayowaa, 1575, São Paulo")
b2.owner = u6
b2.save
b2.photos.attach(io: URI.open(url3), filename: 'bathroom3.png', content_type: 'image/png')
b2.photos.attach(io: URI.open(url2), filename: 'bathroom4.png', content_type: 'image/png')

url4 = 'https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
b3 = Bathroom.new(price: 4.1, description: "Estilo vintage", title: "Banheiro vintage",address: "Rua Harmonia, 402, São Paulo")
b3.owner = u5
b3.save
b3.photos.attach(io: URI.open(url4), filename: 'bathroom5.png', content_type: 'image/png')
b3.photos.attach(io: URI.open(url2), filename: 'bathroom6.png', content_type: 'image/png')

url5 = 'https://images.unsplash.com/photo-1586798271654-0471bb1b0517?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=632&q=80'
b4 = Bathroom.new(price: 3.9, description: "Ambiente agradável", title: "Cague tranquilo", address: "Rua Natingui, 515, São Paulo")
b4.owner = u4
b4.save
b4.photos.attach(io: URI.open(url5), filename: 'bathroom7.png', content_type: 'image/png')
b4.photos.attach(io: URI.open(url2), filename: 'bathroom8.png', content_type: 'image/png')

url6 = 'https://images.unsplash.com/photo-1564540579594-0930edb6de43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'
b5 = Bathroom.new(price: 4.8, description: "Você não precisa mais do que isso", title: "Banheiro simples e limpo", address: "Avenida Dr. Arnaldo, 1113, São Paulo")
b5.owner = u1
b5.save
b5.photos.attach(io: URI.open(url6), filename: 'bathroom9.png', content_type: 'image/png')
b5.photos.attach(io: URI.open(url2), filename: 'bathroom10.png', content_type: 'image/png')

url7 = 'https://images.unsplash.com/photo-1594873672629-61079318a5fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
b6 = Bathroom.create(price: 20, description: "Banheiro comum e limpo", title: "Banheiro normal", address: "Rua Ubatuba, 206, São Paulo")
b6.owner = u2
b6.save
b6.photos.attach(io: URI.open(url7), filename: 'bathroom11.png', content_type: 'image/png')
b6.photos.attach(io: URI.open(url2), filename: 'bathroom12.png', content_type: 'image/png')