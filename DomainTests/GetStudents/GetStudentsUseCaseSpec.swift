import DomainInterfaces
import XCTest

class GetStudentsUseCase {
    func execute(completion: @escaping (([HogwartsCharacterModel]) -> Void), failure: @escaping (() -> Void)) {
        completion([.init(name: "Fluffy Alex")])
    }
}


final class GetStudentsUseCaseSpec: XCTestCase {
    func test_WhenExecute_ThenSuccess_ShouldReceiveCorrectlyValue() {
        let sut = GetStudentsUseCase()
        var spy: [HogwartsCharacterModel] = []
        
        sut.execute { response in
            spy = response
        } failure: {
            XCTFail("Failure")
        }

        XCTAssertEqual(spy, [.init(name: "Fluffy Alex")])
    }
    
//    func test_() {
//        let sut = GetStudentsUseCase()
//        var errorHasCalled: Bool = false
//        
//        sut.execute { _ in
//            XCTFail("Failure")
//        } failure: { _ in
//            errorHasCalled = true
//        }
//
//        XCTAssertTrue(errorHasCalled)
//    }
}

extension HogwartsCharacterModel: Equatable {
    public static func == (lhs: HogwartsCharacterModel, rhs: HogwartsCharacterModel) -> Bool {
        lhs.name == rhs.name
    }
}
