public struct HogwartsCharacterModel: Decodable {
    public var name: String
    public var species: String
    public var gender: String
    public var house: String
    public var wizard: Bool
    public var image: String?
}
