public protocol DataRepositoryProtocol {
    func getHogwartsCharacterList(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void))
}
