<p align="center">
    <img src="https://github.com/joaolfp/DataLife/blob/master/logo/logo.png">
</p>

[![CI](https://github.com/heroesofcode/DataLife/actions/workflows/CI.yml/badge.svg)](https://github.com/heroesofcode/DataLife/actions/workflows/CI.yml)
[![codecov](https://codecov.io/gh/heroesofcode/DataLife/branch/master/graph/badge.svg?token=SCDPQL6N5N)](https://codecov.io/gh/heroesofcode/DataLife)
[![Swift Version](https://img.shields.io/badge/Swift-5.0.x-orange.svg)]()
[![Tag](https://img.shields.io/github/v/tag/heroesofcode/DataLife?logo=github)](https://github.com/heroesofcode/DataLife/releases)
[![Cocoapods compatible](https://img.shields.io/cocoapods/v/DataLife.svg)](https://cocoapods.org/pods/DataLife)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-brightgreen)](https://swift.org/package-manager/)
[![License](https://img.shields.io/github/license/joaolfp/ViewState.svg)](https://github.com/joaolfp/DataLife/blob/master/LICENSE)

## Overview

DataLife is an observable data storage class

## How to use?

- In ViewModel inherit from DataLifeViewModel and create a variable that will be the result value.

```swift
import DataLife

class ViewModel: DataLifeViewModel {
    
    var myName = DataLife<String>()
    
    func fetchMyName() {
        myName.value = "João Lucas"
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

<details>
  <summary><strong>Swift Package Manager</strong></summary>
    
```swift
import DataLife
```

```swift
dependencies: [
    .package(url: "https://github.com/joaolfp/DataLife.git", .upToNextMajor(from: "1.0.5"))
]
```
</details>

<details>
  <summary><strong>CocoaPods</strong></summary>

```swift
import DataLife
```

```ruby
target '<Your Target Name>' do
  pod 'DataLife'
end
```

```bash
$ pod install
```
</details>
    
<details>
  <summary><strong>Carthage</strong></summary>
    
```bash
github "heroesofcode/DataLife"
```
</details>
    
## Author
Coded by [João Lucas](https://github.com/joaolfp)

## License

```
MIT License

Copyright (c) 2020 João Lucas

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
© 2020 GitHub, Inc.
```
