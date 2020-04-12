
# A collection of pokemons data

pokemons = [
    {
        no: 1,
        name: "Bulbasaur",
        about: "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.",
        category: "Seed",
        type: :grass,
        weakness: ["Fire", "Flying", "Ice", "Psychic"]
    },
    {
        no: 393,
        name: "Piplup",
        about: "It doesn't like to be taken care of. It's difficult to bond with since it won't listen to its Trainer.",
        category: "Penguin",
        type: :water,
        weakness: ["E;ectric", "Grass"]
    },
    {
        no: 251,
        name: "Celebi",
        about: "This Pokémon came from the future by crossing over time. It is thought that so long as Celebi appears, a bright and shining future awaits us.",
        category: "Time Travel",
        type: :grass,
        weakness: ["Bug", "Dark", "Fire", "Ghost", "Ice", "Poison"]
    },
    {
        no: 1,
        name: "Fennekin",
        about: "Eating a twig fills it with energy, and its roomy ears give vent to air hotter than 390 degrees Fahrenheit.",
        category: "Fox",
        type: :fire,
        weakness: ["Water", "Rock", "Ground"]
    },
]

def filter ( pokemon_array, filter_type )
#Iterate and filter by type, name & no

  puts "\n Filtered by #{filter_type.keys[0]}"
  pokemon_array.select do |pokemon|
    case filter_type.keys[0]
      when :no
        pokemon[:no] == filter_type.values[0]
      when :name
        pokemon[:name] == filter_type.values[0]
      when :category
        pokemon[:category] ==filter_type.values[0]
      when :type
        pokemon[:type] == filter_type.values[0]
      else
        nil
    end
  end
end


puts filter(pokemons, {:type => :grass})
puts filter(pokemons, {:name => "Fennekin"})
puts filter(pokemons, {:no => 251})

