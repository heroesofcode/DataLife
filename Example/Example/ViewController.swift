//
//  ViewController.swift
//  Example
//
//  Created by João Lucas on 06/10/23.
//

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

