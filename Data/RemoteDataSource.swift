import DomainInterfaces

final class RemoteDataSource: DataRepositoryProtocol {
    func getAllCharactersList(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {}
    
    func getStudentsList(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {}
}
