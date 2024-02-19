public protocol HogwartsCharactersUseCaseProtocol {
    func gettAllHogwartsCharacters(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void))
}
