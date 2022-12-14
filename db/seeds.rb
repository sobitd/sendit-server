# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Seeding'
User.create!([
               {
                 "first_name": 'Koni',
                 "last_name": 'Bobi',
                 "email_address": 'datazamp6@gmail.com',
                 "phone_number": '0737423431',
                 "username": 'apo',
                 "password_digest": 'boilerplate5554',
                 "isAdmin": 'false'
               },
               {
                 "first_name": 'Faka',
                 "last_name": 'Tobi',
                 "email_address": 'datagam@gmail.com',
                 "phone_number": '0733466577',
                 "username": 'redo',
                 "password_digest": 'boilerplate99944',
                 "isAdmin": 'true'
               },
               {
                 "first_name": 'Drey ',
                 "last_name": 'Mwangi',
                 "email_address": 'mandem@gmail.com',
                 "phone_number": '0734662575',
                 "username": 'preme',
                 "password_digest": 'boilerplate9933',
                 "isAdmin": 'false'
               },
               {
                 "first_name": 'Brian',
                 "last_name": 'Kimtai',
                 "email_address": 'prpm@gmail.com',
                 "phone_number": '0721466577',
                 "username": 'prrred',
                 "password_digest": 'boilerplatet644',
                 "isAdmin": 'false'
               },
               {
                 "first_name": 'Grace',
                 "last_name": 'Mish',
                 "email_address": 'deezer@gmail.com',
                 "phone_number": '0712436577',
                 "username": 'skrrr',
                 "password_digest": 'boilerplate45944',
                 "isAdmin": 'false'
               }

             ])

parcel_one = Parcel.create!(recipient_address: '5239 Stroman Pine',
                            recipient_name: 'Ula Schimmel',
                            recipient_contact: '0713245678',
                            weight: 10,
                            from: 8,
                            destination: 12,
                            user_id: 1)

parcel_two = Parcel.create!(recipient_address: '7983 Chantay Circle',
                            recipient_name: 'Orlando Hermiston',
                            recipient_contact: '0712346789',
                            weight: 4,
                            from: 3,
                            destination: 4,
                            user_id: 2)

parcel_three = Parcel.create(recipient_address: '413 Deckow Loop',
                             recipient_name: 'Benedict Mayer',
                             recipient_contact: '0714852369',
                             weight: 5,
                             from: 5,
                             destination: 13,
                             user_id: 3)

parcel_four = Parcel.create(recipient_address: '7771 Kessler Passage',
                            recipient_name: 'Laverne Mueller Jr.',
                            recipient_contact: '0789632541',
                            weight: 8,
                            from: 12,
                            destination: 16,
                            user_id: 4)

parcel_five = Parcel.create(recipient_address: '47154 Beatty Underpass',
                            recipient_name: 'Vernon Schumm',
                            recipient_contact: '0725465789',
                            weight: 8,
                            from: 1,
                            destination: 6,
                            user_id: 5)

puts 'done'
