# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profile.create(
    rut: '1234567-8',
    names: 'nombre director',
    last_names: 'apellido director',
    date_of_birth: '09-04-2021',
    nationality: 'chileno',
    sex: 1,
    address: 'cerca 123',
    phone: '+5694546483',
    type_profile: 0,
    user_id: User.first.id
)