public protocol GetAllHogwartsCharactersUseCaseProtocol {
    func execute(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void))
}
