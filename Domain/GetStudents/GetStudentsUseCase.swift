import DomainInterfaces

public enum GetStudentsUseCaseFactory {
    public static func build(repository: DataRepositoryProtocol) -> GetStudentsUseCaseProtocol  {
        GetStudentsUseCase(repository: repository)
    }
}

final class GetStudentsUseCase: GetStudentsUseCaseProtocol {
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
