puts "🌱 Seeding spices..."

Category.create([
    {
        job_title: "Music"
    },
    {
        job_title: "Computer Science"
    },
    {
        job_title: "Medical"
    },
    {
        job_title: "Food Industry"
    }
])

Job.create([
    {
        job_title: "Chef",
        description: "Oversee food preparation at a restaurant.",
        category_id: 4
    },
    {
        job_title: "Software Developer",
        description: "Design software at a major tech company.",
        category_id: 2
    },
    {
        job_title: "Drummer",
        description: "Play drums for a local band!",
        category_id: 1
    },
    {
        job_title: "Nurse",
        description: "Tend to patients at hospital.",
        category_id: 3
    },
    {
        job_title: "Baker",
        description: "Bake warm delicious pasteries.",
        category_id: 4
    },
    {
        job_title: "Singer",
        description: "Sing for a local band!",
        category_id: 1
    },
    {
        job_title: "Data Analyst",
        description: "Gather and analyze data.",
        category_id: 2
    },
    {
        job_title: "Dentist",
        description: "Provide oral care to patients.",
        category_id: 3
    }
])

puts "✅ Done seeding!"
