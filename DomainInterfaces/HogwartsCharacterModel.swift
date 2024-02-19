public struct HogwartsCharacterModel: Decodable {
    public let name: String

    public init(name: String) {
        self.name = name
    }
}
