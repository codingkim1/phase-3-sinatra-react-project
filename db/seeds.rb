puts "🌱 Seeding spices..."

# Seed your database here

Message.create([
    {
      body: "Success is not final; failure is not fatal: It is the courage to continue that counts.",
      username: "Winston S. Churchill"
    },
    {
      body: "Either you run the day or the day runs you.",
      username: "Jim Rohn"
    },
    {
      body: "It is better to fail in originality than to succeed in imitation.",
      username: "Herman Melville"
    },
    {
      body: "When we strive to become better than we are, everything around us becomes better too.",
      username: "Paulo Coelho"
    },
    {
      body: "Learn as if you will live forever, live like you will die tomorrow.",
      username: "Mahatma Gandhi"
    },
    {
      body: "When you change your thoughts, remember to also change your world.",
      username: "Norman Vincent Peale"
    },
    {
      body: "The road to success and the road to failure are almost exactly the same.",
      username: " Colin R. Davis"
    }
   
  ])

puts "✅ Done seeding!"
