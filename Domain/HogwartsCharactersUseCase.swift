import Data
import DomainInterfaces

public enum HogwartsCharactersUseCaseFactory {
    public static func build(remoteDataSource: RemoteDataSourceProtocol) -> HogwartsCharactersUseCaseProtocol {
        HogwartsCharactersUseCase(remoteDataSource: remoteDataSource)
    }
}

final class HogwartsCharactersUseCase: HogwartsCharactersUseCaseProtocol {
    
    let remoteDataSource: RemoteDataSourceProtocol

    init(remoteDataSource: RemoteDataSourceProtocol) {
        self.remoteDataSource = remoteDataSource
    }

    func gettAllHogwartsCharacters(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {
//        completion([HogwartsCharacterModel.init(name: "Alex")])

        remoteDataSource.getHogwartsCharacterList { result in
            let list = try JSONDecoder().decode(<#T##T#>, from: <#T##Data#>)
        } failure: {

        }

    }
}
