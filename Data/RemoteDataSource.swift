import DomainInterfaces

final class RemoteDataSource: DataRepositoryProtocol {
    func getHogwartsCharacterList(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {
    }
}
