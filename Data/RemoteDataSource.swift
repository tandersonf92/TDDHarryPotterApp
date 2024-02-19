import DomainInterfaces

final class RemoteDataSource: DataRepositoryProtocol {
    func getHogwartsCharacterList<T: Decodable>(completion: @escaping (([T]) -> Void), failure: @escaping (() -> Void)) {
    }
}
