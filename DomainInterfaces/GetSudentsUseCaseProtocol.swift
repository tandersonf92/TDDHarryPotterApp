public protocol GetStudentsUseCaseProtocol {
    func execute(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void))
}
