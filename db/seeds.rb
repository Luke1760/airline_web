# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# https://railsbook.tw/chapters/17-model-migration.html#seed-data
Airline.create([
  { 
    name: "China Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/China-Airlines.png"
  }, 
  { 
    name: "Eva Air",
    image_url: "https://open-flights.s3.amazonaws.com/EVA-Air.png"
  },
  { 
    name: "Cathay Pacific",
    image_url: "https://open-flights.s3.amazonaws.com/Cathay-Pacific.png" 
  }, 
  { 
    name: "Singapore Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/Singapore-Airlines.png" 
  }, 
  { 
    name: "Tigerair-Taiwan",
    image_url: "https://open-flights.s3.amazonaws.com/Tigerair-Taiwan.png" 
  }, 
  { 
    name: "American Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/American-Airlines.png" 
  }
])

reviews = Review.create([
  {
    title: 'Great airline',
    description: 'I had a lovely time!',
    score: 5,
    airline: Airline.first
  },
  {
    title: 'Bad airline',
    description: 'I had a bad time',
    score: 1,
    airline: Airline.first
  }
  ])