<p align="center">
    <img src="https://github.com/heroesofcode/DataLife/blob/master/.github/assets/logo.png">
</p>

[![CI](https://github.com/heroesofcode/DataLife/actions/workflows/CI.yml/badge.svg)](https://github.com/heroesofcode/DataLife/actions/workflows/CI.yml)
[![codecov](https://codecov.io/gh/heroesofcode/DataLife/branch/master/graph/badge.svg?token=SCDPQL6N5N)](https://codecov.io/gh/heroesofcode/DataLife)
[![Cocoapods compatible](https://img.shields.io/cocoapods/v/DataLife.svg)](https://cocoapods.org/pods/DataLife)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
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

### [CocoaPods](https://cocoapods.org)

```ruby
target '<Your Target Name>' do
  pod 'DataLife'
end
```

After run
```bash
$ pod install
```

### [Swift Package Manager (SPM)](https://swift.org/package-manager)

```swift
dependencies: [
    .package(url: "https://github.com/joaolfp/DataLife.git", .upToNextMajor(from: "1.2.5"))
]
```

### [Carthage](https://github.com/Carthage/Carthage)

```
github "heroesofcode/DataLife"
```

## Contributing

To contribute, just fork this project and then open a pull request, feel free to contribute, bring ideas and raise any problem in the issue tab.
    
## Author
Coded by [João Lucas](https://github.com/joaolfp)

## License

DataLife is released under the MIT license. See LICENSE for details.
