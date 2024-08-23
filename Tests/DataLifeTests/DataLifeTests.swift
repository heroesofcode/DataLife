import XCTest
@testable import DataLife

final class DataLifeTests: XCTestCase {

    func testVerifyObserverNameWithSuccess() {
        var getName = ""

        let viewModel = ViewModel()

        viewModel.myName.addObserver(viewModel) { name in
            getName = name
        }

        viewModel.getMyName()

        XCTAssertEqual(getName, "João Lucas")
    }

    static var allTests = [
        ("testVerifyObserverNameWithSuccess", testVerifyObserverNameWithSuccess)
    ]
}
