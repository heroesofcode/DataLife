import DataLife
import Foundation

final class ViewModel: DataLifeViewModel {

    var myName = DataLife<String>()

    func getMyName() {
        myName.value = "João Lucas"
    }
}
