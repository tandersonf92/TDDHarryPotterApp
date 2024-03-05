public struct HogwartsCharacterModel: Decodable {
    public var name: String
    public var species: String
    public var gender: String
    public var house: String
    public var wizard: Bool
    public var image: String?

    public init(name: String, species: String, gender: String, house: String, wizard: Bool, image: String? = nil) {
        self.name = name
        self.species = species
        self.gender = gender
        self.house = house
        self.wizard = wizard
        self.image = image
    }
}
