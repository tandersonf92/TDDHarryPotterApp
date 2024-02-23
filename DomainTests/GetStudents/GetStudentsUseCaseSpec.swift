import DomainInterfaces
import XCTest

class GetStudentsUseCase {

    var isSuccess: Bool
    
    init(isSuccess: Bool) {
        self.isSuccess = isSuccess
    }

    func execute(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {
        isSuccess ? completion([.init(name: "Fluffy Alex")]) : failure()
    }
}

final class GetStudentsUseCaseSpec: XCTestCase {
    func test_WhenExecute_ThenSuccess_ShouldReceiveCorrectlyValue() {
        let sut = GetStudentsUseCase(isSuccess: true)
        var spy: [HogwartsCharacterModel] = []
        
        sut.execute { response in
            spy = response
        } failure: {
            XCTFail("Failure")
        }

        XCTAssertEqual(spy, [.init(name: "Fluffy Alex")])
    }

    func test_WhenExecute_ThenFail_ShouldUpdateErrorValue() {
        let sut = GetStudentsUseCase(isSuccess: false)
        var errorHasCalled: Bool = false
        sut.execute { _ in
            XCTFail("Failure")
        } failure: {
            errorHasCalled = true
        }

        XCTAssertTrue(errorHasCalled)
    }
}

extension HogwartsCharacterModel: Equatable {
    public static func == (lhs: HogwartsCharacterModel, rhs: HogwartsCharacterModel) -> Bool {
        lhs.name == rhs.name
    }
}
