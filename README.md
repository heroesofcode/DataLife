<p align="center">
    <img src="https://github.com/heroesofcode/DataLife/blob/master/.github/assets/logo.png">
</p>

[![CI](https://github.com/heroesofcode/DataLife/actions/workflows/CI.yml/badge.svg)](https://github.com/heroesofcode/DataLife/actions/workflows/CI.yml)
[![codecov](https://codecov.io/gh/heroesofcode/DataLife/branch/master/graph/badge.svg?token=SCDPQL6N5N)](https://codecov.io/gh/heroesofcode/DataLife)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-brightgreen)](https://swift.org/package-manager/)
[![GitHub](https://img.shields.io/github/license/heroesofcode/DataLife)](https://github.com/joaolfp/DataLife/blob/master/LICENSE)

## Overview

DataLife is an observable data storage class

## Support
iOS / tvOS / macOS

## Usage

- In ViewModel inherit from DataLifeViewModel and create a variable that will be the result value.

```swift
import DataLife

class ViewModel: DataLifeViewModel {
    
    var myName = DataLife<String>()
    
    func fetchMyName() {
        myName.value = "Darth Vader"
    }
    
}
```
- In the ViewController you will call the variable that was created in the ViewModel that will be observed.

``` swift
import UIKit

class ViewController: UIViewController {
    
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
        viewModel.myName.observer(viewModel) { name in
            print(name)
        }
    }
}
```

## Installation

### [Swift Package Manager (SPM)](https://swift.org/package-manager)

```swift
import PackageDescription
let package = Package(
    name: "<Your Product Name>",
    dependencies: [
       .package(url: "https://github.com/heroesofcode/DataLife", .upToNextMajor(from: "1.3.0"))
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

DataLife is released under the MIT license. See LICENSE for details.
