//
//  ProductViewController.swift
//  16_UIImageView
//
//  Created by admin on 10.07.2021.
//

import UIKit

final class ProductViewController: UIViewController {

//MARK: - VIew Properties

     public var textLabel: String?
     public var senaText: String?
     public var elementViewImage: UIImage?
    
     private var productlabel = UILabel()
     private var senaLabel = UILabel()
     private var productImage = UIImageView()

//MARK: -Visual Components

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.barTintColor = .black
        tabBarController?.tabBar.barTintColor = .black
        
        productImageFunc()
        funcProductLabel()
        elementLabel()
    }

//MARK: - Methods

    private func productImageFunc() {
        productImage.frame = CGRect(x: 50, y: 200, width: 300, height: 230)
        productImage.image = elementViewImage
        view.addSubview(productImage)
    }

    //LABEL Number 1

    private func funcProductLabel() {
        productlabel.frame = CGRect(x: 20, y: 120, width: 200, height: 60)
        productlabel.text = textLabel
        productlabel.adjustsFontSizeToFitWidth = true
        productlabel.sizeToFit()
        productlabel.textColor = .white
        productlabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(productlabel)
    }

    //LABEL Number 2

    private func elementLabel() {
        senaLabel.frame = CGRect(x: 150, y: 150, width: 80, height: 60)
        senaLabel.text = senaText
        senaLabel.adjustsFontSizeToFitWidth = true
        senaLabel.textAlignment = .center
        senaLabel.sizeToFit()
        senaLabel.textColor = .systemGray2
        senaLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(senaLabel)
    }

}
