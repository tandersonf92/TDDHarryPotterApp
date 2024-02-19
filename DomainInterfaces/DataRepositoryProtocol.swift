public protocol DataRepositoryProtocol {
    func getHogwartsCharacterList<T: Decodable>(completion: @escaping (([T]) -> Void), failure: @escaping (() -> Void))
}
