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
dream_oleole = Dream.new(name: "Rêve Oléolé", details: "Un rêve hot pour réchauffer vos nuits", content: "Une nuit d'hiver, après une longue journée de ski en haute montagne, vous êtes épuisé·e.
  Il fait froid, et une longue nuit solitaire vous attend dans votre chalet...
  Cet·te inconnu·e, avec qui vous avez échangé des regards complices et langoureux toute la journée sur les pistes, vient vous aborder lorsque vous êtes en chemin pour rendre votre matériel.
  Vous êtes complétement charmé·e lorsqu'il/elle vous propose de partager un restaurant ce soir, au sommet de la montagne...
  Un bon repas, une cheminée crépitante... La nuit sera décidément plus chaude que prévue.", price: 150, user: user1)
dream_oleole.photo.attach(io: file_oleole, filename: "oleole.jpg", content_type: "image/jpg")
dream_oleole.save

file_frisson = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118626/frisson_rno8lq.jpg')
dream_frisson = Dream.new(name: "Rêve Frisson", details: "Un rêve angoissant aux frissons garantis", content: "Dans la rue, vous entendez des bruits inquiétants derrière vous.
  En vous retournant vous apercevez une silhouette intrigante qui commence à vous mettre mal à l'aise. Votre instinct de survie prend le dessus et vous décidez de courir.
  Mais les bruits s'intensifient également et vous savez que vous êtes suivi·e !
  Votre imagination ne vous fait pas défaut... Après tout, un tueur en série recherché est en liberté dans votre ville, et vous savez que vous n'avez que quelques minutes pour trouver la meilleure option pour survivre...
  Allez-vous réussir à fuir ?", price: 90, user_id: user2.id)
dream_frisson.photo.attach(io: file_frisson, filename: "frisson.jpg", content_type: "image/jpg")
dream_frisson.save

file_joyeux = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118626/happy_fqfy0h.jpg')
dream_joyeux = Dream.new(name: "Rêve Joyeux", details: "Un rêve drôle qui saura vous faire rire", content: "Qui n'a jamais rêvé de vivre une expérience comique unique ? Ce soir, c'est marathon de films comiques, d'humoristes sur scène, entouré·e de vos meilleur·e·s ami·e·s
  Un seul objectif : vivre un moment de joie pure et inoubliable. Des surprises sont à prévoir alors soyez ouvert.e à toute possibilité ! Laissez entrer le rire dans votre nuit.
  Fou rire garanti !", price: 100, user: user1)
dream_joyeux.photo.attach(io: file_joyeux, filename: "joyeux.jpg", content_type: "image/jpg")
dream_joyeux.save

file_apaisant = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118625/apaisant_hhghgo.jpg')
dream_apaisant = Dream.new(name: "Rêve Apaisant", details: "Un rêve relaxant,idéal pour vous ressourcer", content: "Aujourd'hui votre ami·e proche vous a réservé une journée complète dans un luxueux Spa. Au programme : détente et bien-être. Tous les soins sont à volonté. Que vous ayez envie d'un hammam,
  de rester toute la matinée dans un jacuzzi, ou d'avoir accès à un massage relaxant de qualité (réelles sensations comprises!) : tout est possible. La seule issue de cette journée est une disparition complète de toute forme de stress, et un ressourcement total..." , price: 70,  user: user2)
dream_apaisant.photo.attach(io: file_apaisant, filename: "apaisant.jpg", content_type: "image/jpg")
dream_apaisant.save

file_reconfortant = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118626/reconfortant_dtr5rh.jpg')
dream_reconfortant = Dream.new(name: "Rêve Réconfortant", details: "Un rêve rassurant qui vous enveloppera de douceur", content: "En cette journée morose, vous décidez de reprendre votre moral en main et vous rejoignez un·e ami·e dans un refuge pour animaux.
  Une chatte a mis bas il y a 3 semaines, et 6 magnifiques chatons ne demandent qu'à être choyés.
  Prenez une bouffée d'amour inconditionnel, et un boost naturel de sérotonine. Le refuge dispose d'une salle cocooning où vous pourrez vous glisser sous la couette et être envahi·e d'amour
  par ces petites boules de poils.", price: 80,  user: user1)
dream_reconfortant.photo.attach(io: file_reconfortant, filename: "reconfortant.jpg", content_type: "image/jpg")
dream_reconfortant.save

file_futuriste = URI.open('https://res.cloudinary.com/dsef2i7mv/image/upload/v1669118626/futuriste_uhgqgg.jpg')
dream_futuriste = Dream.new(name: "Rêve futuriste", details: "Un rêve qui promet un voyage dans le temps inoubliable", content: "An 2198 : la Terre a subi une attaque nucléaire et s'en remet très difficilement. Nous vivons en communauté dans l'espace, en espérant pouvoir trouver la planète qui sera capable de
  nous accueillir un jour... Peut-être que cette planète n'existe pas, et qu'il faut sauver la Terre avant qu'elle ne soit complètement détruite. Le capitaine de l'équipage vous propose de retourner dans le passé, avant la
  date fatidique et changer notre destinée... Arriverez-vous à sauver le futur en voyageant dans le passé ?", price: 130,  user: user2)
dream_futuriste.photo.attach(io: file_futuriste, filename: "reconfortant.jpg", content_type: "image/jpg")
dream_futuriste.save
