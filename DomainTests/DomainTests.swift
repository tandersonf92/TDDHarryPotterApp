import XCTest
import DomainInterfaces
import Domain

final class DomainTests: XCTestCase {

    func test_WhenSuccessWithOneObjectThenShouldReceiveResult() {
        let sut = HogwartsCharactersUseCaseFactory.build()

        var spy: [HogwartsCharacterModel] = []

        sut.gettAllHogwartsCharacters { result in
            spy = result
        } failure: {
            XCTFail()
        }

        XCTAssertEqual(spy.count, 1)
    }
}
