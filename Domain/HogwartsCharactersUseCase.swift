import DomainInterfaces

public enum HogwartsCharactersUseCaseFactory {
    public static func build(remoteDataSource: DataRepositoryProtocol) -> HogwartsCharactersUseCaseProtocol {
        HogwartsCharactersUseCase(remoteDataSource: remoteDataSource)
    }
}

final class HogwartsCharactersUseCase: HogwartsCharactersUseCaseProtocol {
    
    let remoteDataSource: DataRepositoryProtocol

    init(remoteDataSource: DataRepositoryProtocol) {
        self.remoteDataSource = remoteDataSource
    }

    func getAllHogwartsCharacters(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {
        remoteDataSource.getHogwartsCharacterList { result in
            completion(result)
        } failure: {
            failure()
        }
    }
}
