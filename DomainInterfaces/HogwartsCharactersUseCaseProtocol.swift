public protocol HogwartsCharactersUseCaseProtocol {
    func getAllHogwartsCharacters(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void))
}
