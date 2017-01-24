# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.delete_all
Comment.delete_all

Article.create([{
    title: 'Primeiro Post',
    text: 'Conteúdo muito interessante para um blog.'
  },
  {
    title: 'Rails é maneiro!',
    text: '<p>Rails is a web application framework running on the Ruby programming language. If you have no prior experience with Ruby, you will find a very steep learning curve diving straight into Rails. There are several curated lists of online resources for learning Ruby:</p><ul><li>Official Ruby Programming Language website</li><li>List of Free Programming Books</li></ul>'
  }
  ])

primeiro = Article.first
segundo = Article.all[1]

primeiro.comments.create([
  {
    commenter: "Alex Kutzke",
    body: "Legal!"
  },
  {
    commenter: "Hater",
    body: "Curto e pouco interessante!"
  }])

segundo.comments.create(
  {
    commenter: "Hater",
    body: "Ruim também."
  })
