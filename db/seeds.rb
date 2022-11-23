# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Reservation.destroy_all
Dream.destroy_all
User.destroy_all

user1 = User.create(email: "user1@gmail.com", password: 'password')
user2 = User.create(email: "user2@gmail.com", password: 'password')

file_oleole = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118625/oleole_qpmang.jpg')
dream_oleole = Dream.new(name: "Rêve Oléolé", details: "Rêve hot pour réchauffer tes nuits", price: 150, user: user1)
dream_oleole.photo.attach(io: file_oleole, filename: "oleole.jpg", content_type: "image/jpg")
dream_oleole.save

file_frisson = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118626/frisson_rno8lq.jpg')
dream_frisson = Dream.new(name: "Rêve Frisson", details: "Rêve angoissant aux frissons garantis", price: 90, user_id: user2.id)
dream_frisson.photo.attach(io: file_frisson, filename: "frisson.jpg", content_type: "image/jpg")
dream_frisson.save

file_joyeux = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118626/happy_fqfy0h.jpg')
dream_joyeux = Dream.new(name: "Rêve Joyeux", details: "Rêve drôle qui saura te faire rire", price: 100,  user: user1)
dream_joyeux.photo.attach(io: file_joyeux, filename: "joyeux.jpg", content_type: "image/jpg")
dream_joyeux.save

file_apaisant = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118625/apaisant_hhghgo.jpg')
dream_apaisant = Dream.new(name: "Rêve Apaisant", details: "Rêve relaxant pour te ressourcer ", price: 70,  user: user2)
dream_apaisant.photo.attach(io: file_apaisant, filename: "apaisant.jpg", content_type: "image/jpg")
dream_apaisant.save

file_reconfortant = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118626/reconfortant_dtr5rh.jpg')
dream_reconfortant = Dream.new(name: "Rêve Réconfortant", details: "Rêve rassurant qui t'enveloppera de douceur", price: 80,  user: user1)
dream_reconfortant.photo.attach(io: file_reconfortant, filename: "reconfortant.jpg", content_type: "image/jpg")
dream_reconfortant.save

file_futuriste = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118626/futuriste_uhgqgg.jpg')
dream_futuriste = Dream.new(name: "Rêve futuriste", details: "Rêve qui te promet un voyage dans le temps inoubliale", price: 130,  user: user2)
dream_futuriste.photo.attach(io: file_futuriste, filename: "reconfortant.jpg", content_type: "image/jpg")
dream_futuriste.save
