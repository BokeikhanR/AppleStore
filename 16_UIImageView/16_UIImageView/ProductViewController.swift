//
//  ProductViewController.swift
//  16_UIImageView
//
//  Created by admin on 10.07.2021.
//

import UIKit

final class ProductViewController: UIViewController {

//MARK: - VIew Properties

     public var a: String? = nil
     public var b: String? = nil
     public var image: UIImage? = nil
     private var productlabel1 = UILabel()
     private var productlabel2 = UILabel()
     private var productImage = UIImageView()

//MARK: -Visual Components

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.barTintColor = .black
        tabBarController?.tabBar.barTintColor = .black
        
        productImageFunc()
        funcProductLabel1()
        productLabel2()
    }

//MARK: - product Image Method

    private func productImageFunc() {
        productImage.frame = CGRect(x: 50, y: 200, width: 300, height: 230)
        productImage.image = image
        view.addSubview(productImage)
    }

//MARK: - Product Name Label

    private func funcProductLabel1() {
        productlabel1.frame = CGRect(x: 20, y: 120, width: 200, height: 60)
        productlabel1.text = a
        productlabel1.adjustsFontSizeToFitWidth = true
        productlabel1.sizeToFit()
        productlabel1.textColor = .white
        productlabel1.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(productlabel1)
    }

//MARK: - Product Sena Label

    private func productLabel2() {
        productlabel2.frame = CGRect(x: 150, y: 150, width: 80, height: 60)
        productlabel2.text = b
        productlabel2.adjustsFontSizeToFitWidth = true
        productlabel2.textAlignment = .center
        productlabel2.sizeToFit()
        productlabel2.textColor = .systemGray2
        productlabel2.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(productlabel2)
    }

}
