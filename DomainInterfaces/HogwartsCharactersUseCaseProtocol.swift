protocol HogwartsCharactersUseCaseProtocol {
    func gettAllHogwartsCharacters(completion: @escaping (Result<[HogwartsCharacterModel],Error>) -> Void)
}
