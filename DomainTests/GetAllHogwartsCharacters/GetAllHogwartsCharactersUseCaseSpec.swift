import Domain
import DomainInterfaces
import XCTest

final class GetAllHogwartsCharactersUseCaseSpec: XCTestCase {

    func test_WhenSuccessWithEmptyListThenShouldReceiveResult() {
        let sut = makeSut(isSuccess: true, numbersOfModels: 0)

        var spy: [HogwartsCharacterModel] = []

        sut.execute { result in
            spy = result
        } failure: {
            XCTFail()
        }

        XCTAssertEqual(spy.count, 0)
    }

    func test_WhenSuccessWithOneObjectThenShouldReceiveResult() {
        let sut = makeSut(isSuccess: true, numbersOfModels: 1)

        var spy: [HogwartsCharacterModel] = []

        sut.execute { result in
            spy = result
        } failure: {
            XCTFail()
        }

        XCTAssertEqual(spy.count, 1)
    }

    func test_WhenFailureThenShouldCallFailure() {
        let sut = makeSut(isSuccess: false, numbersOfModels: 0)

        var isFailure: Bool = false


        sut.execute { result in
            XCTFail()
        } failure: {
            isFailure = true
        }

        XCTAssertTrue(isFailure)
    }
}

extension GetAllHogwartsCharactersUseCaseSpec {
    func makeSut(isSuccess: Bool = true, numbersOfModels: Int = 0) -> GetAllHogwartsCharactersUseCaseProtocol {
        let stub: DataRepositoryProtocol = Stub(isSuccess: isSuccess, numbersOfModels: numbersOfModels)
        return GetAllHogwartsCharactersUseCaseFactory.build(remoteDataSource: stub)
    }
}

final class Stub: DataRepositoryProtocol {
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
    
    func getStudentsList(completion: @escaping (([DomainInterfaces.HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {}
}
