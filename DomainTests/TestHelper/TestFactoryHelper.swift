import DomainInterfaces

enum TestFactoryHelper {
 static func makeHogwartsCharacterModel() -> HogwartsCharacterModel {
     .init(name: "any_name", species: "any_species", gender: "any_gender", house: "any_house", wizard: true)
 }
}
