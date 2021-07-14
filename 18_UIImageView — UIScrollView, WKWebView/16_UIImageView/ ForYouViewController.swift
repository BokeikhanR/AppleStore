//
//  SecondViewController.swift
//  16_UIImageView
//
//  Created by admin on 09.07.2021.
//

import UIKit

final class ForYouViewController: UIViewController {

//MARK: - View Components
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createView()
    }
//MARK: - View Methods
    fileprivate func createView() {
        title = "Для вас"
        view.backgroundColor = .black
    }


}
