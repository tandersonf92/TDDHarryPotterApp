@testable import Domain
import DomainInterfaces
import XCTest

final class GetStudentsUseCaseSpec: XCTestCase {
    func test_WhenExecute_ThenSuccess_ShouldReceiveCorrectlyValue() {
        let sut = makeSut(isSuccess: true)
        var spy: [HogwartsCharacterModel] = []
        
        sut.execute { response in
            spy = response
        } failure: {
            XCTFail("Failure")
        }

        XCTAssertEqual(spy, [.init(name: "Alex")])
    }

    func test_WhenExecute_ThenFail_ShouldUpdateErrorValue() {
        let sut = makeSut(isSuccess: false)
        var errorHasCalled: Bool = false
        sut.execute { _ in
            XCTFail("Failure")
        } failure: {
            errorHasCalled = true
        }

        XCTAssertTrue(errorHasCalled)
    }

    private func makeSut(isSuccess: Bool) -> GetStudentsUseCaseProtocol {
        let repository = RepositoryStub(isSuccess: isSuccess, numbersOfModels: 1)
        return GetStudentsUseCaseFactory.build(repository: repository)
    }
}

extension HogwartsCharacterModel: Equatable {
    public static func == (lhs: HogwartsCharacterModel, rhs: HogwartsCharacterModel) -> Bool {
        lhs.name == rhs.name
    }
}
