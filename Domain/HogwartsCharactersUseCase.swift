import DomainInterfaces

public enum HogwartsCharactersUseCaseFactory {
    public static func build() -> HogwartsCharactersUseCaseProtocol {
        HogwartsCharactersUseCase()
    }
}

final class HogwartsCharactersUseCase: HogwartsCharactersUseCaseProtocol {
    func gettAllHogwartsCharacters(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {
        completion([HogwartsCharacterModel.init(name: "Alex")])
    }
}
