public protocol RemoteDataSourceProtocol {
    func getHogwartsCharacterList<T: Decodable>(completion: @escaping (([T]) -> Void), failure: @escaping (() -> Void))
}

struct RemoteDataSource: RemoteDataSourceProtocol {
    func getHogwartsCharacterList<T: Decodable>(completion: @escaping (([T]) -> Void), failure: @escaping (() -> Void)) {
    }
}
