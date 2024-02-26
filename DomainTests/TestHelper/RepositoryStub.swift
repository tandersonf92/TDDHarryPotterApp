import DomainInterfaces
import Foundation

final class RepositoryStub: DataRepositoryProtocol {
    let isSuccess: Bool
    let numbersOfModels: Int

    init(isSuccess: Bool = true, numbersOfModels: Int = 0) {
        self.isSuccess = isSuccess
        self.numbersOfModels = numbersOfModels
    }

    func getAllCharactersList(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {
        if isSuccess {
            var list: [HogwartsCharacterModel] = []
            for _ in 0..<numbersOfModels {
                list.append(.init(name: "Alex"))
            }
            completion(list)
        } else {
            failure()
        }
    }
    
    func getStudentsList(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {
        if isSuccess {
            var list: [HogwartsCharacterModel] = []
            for _ in 0..<numbersOfModels {
                list.append(.init(name: "Alex"))
            }
            completion(list)
        } else {
            failure()
        }
    }
}
