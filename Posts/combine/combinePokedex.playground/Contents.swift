import UIKit
import Combine

/**
 description: Parts of the Pokemon from pokeapi
 */
struct NamedResource: Codable {
    let name: String
    let url: String
}
struct Ability: Codable {
    let is_hidden: Bool
    let slot: Int
    let ability: NamedResource
}
struct VersionGameIndex: Codable {
    let game_index: Int
    let version: NamedResource
}
struct VersionDetail: Codable {
    let rarity: Int
    let version: NamedResource
}
struct PokemonHeldItem: Codable {
    let item: NamedResource
    let version_details: [VersionDetail]
}
struct PokemonMoveVersion: Codable {
    let move_learn_method: NamedResource
    let version_group: NamedResource
    let level_learned_at: Int
}
struct PokemonMove: Codable {
    let move: NamedResource
    let version_group_details: [PokemonMoveVersion]
}
struct PokemonType: Codable {
    let slot: Int
    let type: NamedResource
}
struct PokemonStat: Codable {
    let stat: NamedResource
    let effort: Int
    let base_stat: Int
}
struct PokemonSprites: Codable {
    let front_default: String?
    let front_shiny: String?
    let front_female: String?
    let front_shiny_female: String?
    let back_default: String?
    let back_shiny: String?
    let back_female: String?
    let back_shiny_female: String?
}
struct Pokemon: Codable {
    let id: Int
    let name: String
    let base_experience: Int
    let height: Int
    let is_default: Bool
    let order: Int
    let weight: Int
    let abilities: [Ability]
    let forms: [NamedResource]
    let game_indices: [VersionGameIndex]
    let held_items: [PokemonHeldItem]
    let location_area_encounters: String
    let moves: [PokemonMove]
    let sprites: PokemonSprites
    let species: NamedResource
    let stats: [PokemonStat]
    let types: [PokemonType]
}

let one_url = URL(string: "https://pokeapi.co/api/v2/pokemon/pikachu/")
let urls = [URL(string: "https://pokeapi.co/api/v2/pokemon/pikachu/")!, URL(string: "https://pokeapi.co/api/v2/pokemon/jigglypuff/")!]
var pokemon: [Pokemon] = []{
    didSet{
        print(pokemon.count)
    }
}

// testing subscriptions

let subscription = URLSession.shared
    .dataTaskPublisher(for: urls[0])
    .map(\.data)
    .decode(type: Pokemon.self, decoder: JSONDecoder())
    .sink(receiveCompletion: { completion in
        if case .failure(let err) = completion {
            print("Retrieving data failed with error \(err)")
        }
    }, receiveValue: { object in
        print("Retrieved object \(object)")
        pokemon.append(object)
    })

let sub2 = URLSession.shared
.dataTaskPublisher(for: urls[1])
.map(\.data)
.decode(type: Pokemon.self, decoder: JSONDecoder())
.sink(receiveCompletion: { completion in
    if case .failure(let err) = completion {
        print("Retrieving data failed with error \(err)")
    }
}, receiveValue: { object in
    print("Retrieved object \(object)")
    pokemon.append(object)
})
