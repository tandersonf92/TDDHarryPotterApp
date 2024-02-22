import DomainInterfaces
import XCTest

class GetStudentsUseCase {
    func execute(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping ((Error) -> Void)) {
        
    }
}


final class GetStudentsUseCaseSpec: XCTestCase {
    func test_WhenExecute_ThenSuccess_ShouldReceiveCorrectlyValue() {
        let sut = GetStudentsUseCase()
        var spy: [HogwartsCharacterModel] = [.init(name: "AlexBundao")]
        
        sut.execute { response in
            spy = response
        } failure: { _ in
            XCTFail("Failure")
        }

        XCTAssertEqual(spy, [.init(name: "AlexBundao")])
    }
}

extension HogwartsCharacterModel: Equatable {
    public static func == (lhs: HogwartsCharacterModel, rhs: HogwartsCharacterModel) -> Bool {
        lhs.name == rhs.name
    }
}
