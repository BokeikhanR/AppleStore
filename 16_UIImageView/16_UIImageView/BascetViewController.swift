//
//  BascetVC.swift
//  16_UIImageView
//
//  Created by admin on 09.07.2021.
//

import UIKit

final class BascetViewController: UIViewController {
//MARK: - View Components
    override func viewDidLoad() {
        super.viewDidLoad()
        viewElements()
    }
//MARK: - View Elements
    private func viewElements() {
        title = "Корзина"
        view.backgroundColor = .black
    }

}
