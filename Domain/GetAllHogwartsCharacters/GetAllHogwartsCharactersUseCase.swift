import DomainInterfaces

public enum GetAllHogwartsCharactersUseCaseFactory {
    public static func build(remoteDataSource: DataRepositoryProtocol) -> GetAllHogwartsCharactersUseCaseProtocol {
        GetAllHogwartsCharactersUseCase(remoteDataSource: remoteDataSource)
    }
}

final class GetAllHogwartsCharactersUseCase: GetAllHogwartsCharactersUseCaseProtocol {
    
    let remoteDataSource: DataRepositoryProtocol

    init(remoteDataSource: DataRepositoryProtocol) {
        self.remoteDataSource = remoteDataSource
    }

    func execute(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {
        remoteDataSource.getAllCharactersList { result in
            completion(result)
        } failure: {
            failure()
        }
    }
}
