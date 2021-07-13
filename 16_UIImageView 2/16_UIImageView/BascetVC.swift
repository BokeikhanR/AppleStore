//
//  BascetVC.swift
//  16_UIImageView
//
//  Created by admin on 09.07.2021.
//

import UIKit

final class BascetVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        viewElements()
    }
//MARK: - Methods

    private func viewElements() {
        title = "Корзина"
        view.backgroundColor = .black
        //tabBarController?.tabBar.barTintColor = .black
    }

}
