// Playground generated with 🏟 Arena (https://github.com/finestructure/arena)
// ℹ️ If running the playground fails with an error "No such module"
//    go to Product -> Build to re-trigger building the SPM package.
// ℹ️ Please restart Xcode if autocomplete is not working.

import DataLife

final class ViewModel: DataLifeViewModel {

    var myName = DataLife<String>()

    func getMyName() {
        myName.value = "João Lucas"
    }
}

var getName = ""

let viewModel = ViewModel()

viewModel.myName.addObserver(viewModel) { name in
    getName = name
}

viewModel.getMyName()

print("\(getName)")
