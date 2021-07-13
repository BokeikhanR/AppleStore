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
        
        createViewElements()
    }

//MARK: - View Elements

    fileprivate func createViewElements() {
        title = "Купить"
        view.backgroundColor = .black
    }
}
