puts "🌱 Seeding spices..."

# Seed your database here

Message.create([
    {
      body: "Success is not final; failure is not fatal: It is the courage to continue that counts.",
      username: "Winston S. Churchill"
    },
    {
      body: "It is better to fail in originality than to succeed in imitation.",
      username: "Herman Melville"
    },
    {
      body: "The road to success and the road to failure are almost exactly the same.",
      username: " Colin R. Davis"
    }
   
  ])

puts "✅ Done seeding!"
