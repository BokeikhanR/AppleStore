//
//  BuyVC.swift
//  16_UIImageView
//
//  Created by admin on 09.07.2021.
//

import UIKit

final class BuyViewController: UIViewController {
    
//MARK: - View Components
    override func viewDidLoad() {
        super.viewDidLoad()
        createView()
    }

//MARK: View Methods
    private func createView() {
        title = "Купить"
        view.backgroundColor = .black
    }
}
