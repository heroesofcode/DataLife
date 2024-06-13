<p align="center">
    <img src="https://raw.githubusercontent.com/heroesofcode/DataLife/master/assets/logo.png">
</p>

[![CI](https://github.com/heroesofcode/DataLife/actions/workflows/CI.yml/badge.svg)](https://github.com/heroesofcode/DataLife/actions/workflows/CI.yml)

[![SPM compatible](https://img.shields.io/badge/SPM-compatible-brightgreen)](https://swift.org/package-manager/)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fheroesofcode%2FDataLife%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/heroesofcode/DataLife)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fheroesofcode%2FDataLife%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/heroesofcode/DataLife)
[![GitHub](https://img.shields.io/github/license/heroesofcode/DataLife)](https://github.com/joaolfp/DataLife/blob/master/LICENSE)

## Overview

DataLife is an observable data storage class

## Usage

- In ViewModel inherit from DataLifeViewModel and create a variable that will be the result value.

```swift
import DataLife

final class ViewModel: DataLifeViewModel {
    
    var myName = DataLife<String>()
    
    func fetchMyName() {
        myName.value = "Darth Vader"
    }
    
}
```
- In the ViewController you will call the variable that was created in the ViewModel that will be observed.

``` swift
import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    private let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupState()
        setupFetchMyName()
    }

    private func setupFetchMyName() {
        viewModel.fetchMyName()
    }
    
    private func setupState() {
        viewModel.myName.observer(viewModel) { [weak self] name in
            self?.nameLabel.text = name
        }
    }
}
```

## Example in Arena Playgrounds
You can test DataLife using (Arena)(https://github.com/finestructure/Arena)

<img src="https://raw.githubusercontent.com/heroesofcode/DataLife/master/assets/example.png">

## Installation

### [Swift Package Manager (SPM)](https://swift.org/package-manager)

```swift
import PackageDescription
let package = Package(
    name: "<Your Product Name>",
    dependencies: [
       .package(url: "https://github.com/heroesofcode/DataLife", .upToNextMajor(from: "1.4.0"))
    ],
    targets: [
        .target(
            name: "<Your Target Name>",
            dependencies: ["DataLife"]),
    ]
)
```

## Contributing

To contribute, just fork this project and then open a pull request, feel free to contribute, bring ideas and raise any problem in the issue tab.

    
## License

DataLife is released under the MIT license. See [LICENSE](https://github.com/heroesofcode/DataLife/blob/master/LICENSE) for details.
