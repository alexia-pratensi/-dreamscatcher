# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Dream.destroy_all

dream_oleole = Dream.new(name: "Rêve Oléolé", details: "Rêve hot pour réchauffer tes nuits", price: 150)
dream_frisson = Dream.new(name: "Rêve Frisson", details: "Rêve angoissant aux frissons garantis", price: 90)
dream_joyeux = Dream.new(name: "Rêve Joyeux", details: "Rêve drôle qui saura te faire rire", price: 100)
dream_apaisant = Dream.new(name: "Rêve Apaisant", details: "Rêve relaxant pour te ressourcer ", price: 70)
dream_reconfortant = Dream.new(name: "Rêve Réconfortant", details: "Rêve rassurant qui t'enveloppera de douceur", price: 80)
dream_futuriste = Dream.new(name: "Rêve futuriste", details: "Rêve qui te promets un voyage dans le temps inoubliale", price: 130)
