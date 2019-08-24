# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
    {
        email:"lxdemikz@gmail.com",
        username:"Akademyx",
        password: "RockMan8501"
    },
    {
        email:"elmuchogrumpy@gmail.com",
        username:"Grumpy",
        password: "Olzick"
    },
    {
        email:"jongsoojong@hotmail.com",
        username:"Yoonity",
        password: "Jong"
    },
    {
        email:"kidkaze@gmail.com",
        username:"KidKaze",
        password: "Torres"
    }
])