//
//  ViewController.swift
//  16_UIImageView
//
//  Created by admin on 09.07.2021.
//

import UIKit

final class SearchViewController: UIViewController {

    private var tabBarImage = UITabBarItem()
    private var searchLabel = UILabel()
    private var prosmotrLabel = UILabel()
    private var ochistitLabel = UILabel()
    private var variantLabel = UILabel()

    private var poiskTextField = UITextField()
    private var zapros1 = UITextField()
    private var zapros2 = UITextField()
    private var zapros3 = UITextField()
    private var zapros4 = UITextField()

    private var elementView = UIView()
    private var nameElementLabel = UILabel()
    private var elementImage = UIImageView()

    private var elementView2 = UIView()
    private var nameElementLabel2 = UILabel()
    private var elementImage2 = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        tapToGisture()
        viewElementChehol()
        viewElementBelt()
        poiskTextFieldFunc()
        zaprosTextFieldFunc()
        elementLabelsFunc()
        viewElementFunc()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.isNavigationBarHidden = false
    }

//MARK: Mathods

//View Elements

    private func viewElementFunc() {
        title = "Поиск"
        view.backgroundColor = .black
    }

//Element Labels

    private func elementLabelsFunc() {
        searchLabel.frame = CGRect(x: 20, y: 50, width: 200, height: 60)
        searchLabel.text = "Поиск"
        searchLabel.textColor = .systemGray6
        searchLabel.font = UIFont.boldSystemFont(ofSize: 40)
        view.addSubview(searchLabel)

        prosmotrLabel.frame = CGRect(x: 20, y: 200, width: 300, height: 37)
        prosmotrLabel.text = "Недавно просмотренные"
        prosmotrLabel.textColor = .systemGray6
        prosmotrLabel.font = UIFont.boldSystemFont(ofSize: 23)
        view.addSubview(prosmotrLabel)

        ochistitLabel.frame = CGRect(x: 310, y: 202, width: 300, height: 40)
        ochistitLabel.text = "Очистить "
        ochistitLabel.textColor = .systemBlue
        ochistitLabel.font = UIFont.boldSystemFont(ofSize: 15)
        view.addSubview(ochistitLabel)

        variantLabel.frame = CGRect(x: 20, y: 442, width: 300, height: 40)
        variantLabel.text = "Варианты запросов"
        variantLabel.textColor = .systemGray6
        variantLabel.font = UIFont.boldSystemFont(ofSize: 23)
        view.addSubview(variantLabel)
    }

// Zapros TextFields

    private func zaprosTextFieldFunc() {
        // Zapros number 1

        zapros1.frame = CGRect(x: 25, y: 480, width: 200, height: 40)
        let poiskImage1 = UIImage(named: "magnifyingglass")
        addLeftImageTo1(txtField: zapros1, andImage: poiskImage1!)
        zapros1.text = "   AirPods"
        zapros1.textColor = .systemGray6
        zapros1.font = UIFont.boldSystemFont(ofSize: 20)
        zapros1.backgroundColor = .black
        zapros1.layer.cornerRadius = 10
        view.addSubview(zapros1)

        // Zapros number 2

        zapros2.frame = CGRect(x: 25, y: 530, width: 200, height: 40)
        let poiskImage2 = UIImage(named: "magnifyingglass")
        addLeftImageTo2(txtField: zapros2, andImage: poiskImage2!)
        zapros2.text = "   AppleCare"
        zapros2.textColor = .systemGray6
        zapros2.font = UIFont.boldSystemFont(ofSize: 20)
        zapros2.backgroundColor = .black
        zapros2.layer.cornerRadius = 10
        view.addSubview(zapros2)

        // Zapros number 3

        zapros3.frame = CGRect(x: 25, y: 580, width: 200, height: 40)
        let poiskImage3 = UIImage(named: "magnifyingglass")
        addLeftImageTo3(txtField: zapros3, andImage: poiskImage3!)
        zapros3.text = "   Beats"
        zapros3.textColor = .systemGray6
        zapros3.font = UIFont.boldSystemFont(ofSize: 20)
        zapros3.backgroundColor = .black
        zapros3.layer.cornerRadius = 10
        view.addSubview(zapros3)

        // Zapros number 4

        zapros4.frame = CGRect(x: 25, y: 630, width: 300, height: 40)
        let poiskImage4 = UIImage(named: "magnifyingglass")
        addLeftImageTo4(txtField: zapros2, andImage: poiskImage4!)
        zapros4.text = "   Сравните модели Iphone"
        zapros4.textColor = .systemGray6
        zapros4.font = UIFont.boldSystemFont(ofSize: 20)
        zapros4.backgroundColor = .black
        zapros4.layer.cornerRadius = 10
        view.addSubview(zapros4)
    }

//View Element number 2

    private func viewElementBelt() {

        elementView2.frame = CGRect(x: 190, y: 250, width: 150, height: 180)
        nameElementLabel2.frame = CGRect(x: 20, y: 130, width: 120, height: 30)
        elementImage2.frame = CGRect(x: 10, y: 11, width: 120, height: 100)
        elementImage2.image = UIImage(named: "belt")
        elementImage2.contentMode = .scaleAspectFit
        nameElementLabel2.text = "Спортивный ремешок Black Unity"
        nameElementLabel2.textColor = .white
        nameElementLabel2.font = UIFont.boldSystemFont(ofSize: 10)
        nameElementLabel2.numberOfLines = 0
        nameElementLabel2.adjustsFontSizeToFitWidth = true
        nameElementLabel2.sizeToFit()
        elementView2.addSubview(elementImage2)
        elementView2.addSubview(nameElementLabel2)
        elementView2.backgroundColor = .systemGray
        elementView2.layer.cornerRadius = 10
        view.addSubview(elementView2)
    }

//View Element number 1

    private func viewElementChehol() {

        elementView.frame = CGRect(x: 20, y: 250, width: 150, height: 180)
        nameElementLabel.frame = CGRect(x: 20, y: 130, width: 120, height: 30)
        elementImage.frame = CGRect(x: 10, y: 10, width: 120, height: 120)
        elementImage.image = UIImage(named: "case")
        elementImage.contentMode = .scaleAspectFit
        nameElementLabel.text = "Чехол Inhace Flat для MacBook Pro 16 дюймов"
        nameElementLabel.textColor = .white
        nameElementLabel.font = UIFont.boldSystemFont(ofSize: 10)
        nameElementLabel.numberOfLines = 0
        nameElementLabel.adjustsFontSizeToFitWidth = true
        nameElementLabel.sizeToFit()
        elementView.addSubview(elementImage)
        elementView.addSubview(nameElementLabel)
        elementView.backgroundColor = .systemGray
        elementView.layer.cornerRadius = 10
        view.addSubview(elementView)
    }

//Text Field

    private func poiskTextFieldFunc() {

        poiskTextField.frame = CGRect(x: 20, y: 120, width: 350, height: 40)
        let poiskImage = UIImage(named: "magnifyingglass")
        addLeftImageTo(txtField: poiskTextField, andImage: poiskImage!)
        poiskTextField.text = " Поиск по продуктам и магазинам"
        poiskTextField.textColor = .systemGray6
        poiskTextField.backgroundColor = .systemGray
        poiskTextField.layer.cornerRadius = 10
        view.addSubview(poiskTextField)
    }

//MARK: - Gesture Functions

    private func tapToGisture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(hundleTap))
        tap.numberOfTapsRequired = 1
        elementView.addGestureRecognizer(tap)
        elementView.isUserInteractionEnabled = true
    }

    @objc func hundleTap(sender: UITapGestureRecognizer) {
        let productVC = ProductViewController()
        navigationController?.pushViewController(productVC, animated: true)
        productVC.textLabel = nameElementLabel.text
        productVC.elementViewImage = elementImage.image
        productVC.senaText = "3 999.9 Руб"
        
    }

//MARK: - OBJC Methods

    @objc func addLeftImageTo(txtField: UITextField, andImage img: UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        poiskTextField.leftView = leftImageView
        poiskTextField.leftViewMode = .always
    }

    @objc func addLeftImageTo1(txtField: UITextField, andImage img: UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        zapros1.leftView = leftImageView
        zapros1.leftViewMode = .always
    }

    @objc func addLeftImageTo2(txtField: UITextField, andImage img: UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        zapros2.leftView = leftImageView
        zapros2.leftViewMode = .always
    }

    @objc func addLeftImageTo3(txtField: UITextField, andImage img: UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        zapros3.leftView = leftImageView
        zapros3.leftViewMode = .always
    }

    @objc func addLeftImageTo4(txtField: UITextField, andImage img: UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        zapros4.leftView = leftImageView
        zapros4.leftViewMode = .always
    }

}

