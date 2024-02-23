public protocol GetSudentsUseCaseProtocol {
    func execute(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void))
}
