import DomainInterfaces

public enum GetStudentsUseCaseFactory {
    public static func build(repository: DataRepositoryProtocol) -> GetSudentsUseCaseProtocol  {
        GetStudentsUseCase(repository: repository)
    }
}

final class GetStudentsUseCase: GetSudentsUseCaseProtocol {
    private let repository: DataRepositoryProtocol

    init(repository: DataRepositoryProtocol) {
        self.repository = repository
    }

    func execute(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {
        repository.getStudentsList { studentsList in
            completion(studentsList)
        } failure: {
            failure()
        }
    }
}
