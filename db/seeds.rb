# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Airline.create([
  { 
    name: "Tigerair Taiwan",
    image_url: "https://open-flights.s3.amazonaws.com/Tigerair-Taiwan.png" 
  },
  { 
    name: "Vanilla Air",
    image_url: "https://open-flights.s3.amazonaws.com/Vanilla-Air.png" 
  },
  { 
    name: "Eastar Jet",
    image_url: "https://open-flights.s3.amazonaws.com/Eastar-Jet.png" 
  }, 
  { 
    name: "Air Busan",
    image_url: "https://open-flights.s3.amazonaws.com/Air-Busan.png" 
  }, 
  { 
    name: "9 Air",
    image_url: "https://open-flights.s3.amazonaws.com/9-Air.png"
  }, 
  { 
    name: "Spring Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/Spring-Airlines.png"
  },
  { 
    name: "Jeju Air",
    image_url: "https://open-flights.s3.amazonaws.com/Jeju-Air.png" 
  },
  { 
    name: "HK Express",
    image_url: "https://open-flights.s3.amazonaws.com/HK-Express.png" 
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