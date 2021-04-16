# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Profile.destroy_all

user = User.create(
    email: 'test@mail.com',
    password: 'test123456'
)

Profile.create(
    rut: '1234567-8',
    names: 'Ricardo Emilio',
    last_names: 'Alvarez Campos',
    date_of_birth: '13-08-1989',
    nationality: 'chileno',
    sex: 0,
    address: 'mi casa',
    phone: '+5694546483',
    type_profile: 0,
    user_id: user.id
)

