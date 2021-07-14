//
//  ViewController.swift
//  16_UIImageView
//
//  Created by admin on 09.07.2021.
//

import UIKit

final class SearchViewController: UIViewController {

//MARK: - Private properties

    private var tabBarImage = UITabBarItem()
    private var searchLabel = UILabel()
    private var prosmotrLabel = UILabel()
    private var ochistitLabel = UILabel()
    private var variantLabel = UILabel()

    private var poiskTextField = UITextField()
    private var airPodsTextField = UITextField()
    private var appleCareTextField = UITextField()
    private var beatsTextField = UITextField()
    private var iphoneTextField = UITextField()

    private var inhaceFlat = UIView()
    private var nameElementLabel = UILabel()
    private var inhaceFlatImage = UIImageView()

    private var blackUnity = UIView()
    private var caseBown = UIView()
    private var nameElementLabel2 = UILabel()
    private var nameElementLabel3 = UILabel()
    private var blackUnityImage = UIImageView()
    private var caseBownImage = UIImageView()

    private var elementsScrollView = UIScrollView()

//MARK: - View Components

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollViewFunction()

        tapToGisture()
        viewElementChehol()
        viewElementBelt()
        poiskTextFieldFunc()
        zaprosTextFieldFunc()
        elementLabelsFunc()
        viewElementFunc()

        caseBownFunction()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.isNavigationBarHidden = false
    }


//MARK: - Scroll View

    fileprivate func scrollViewFunction() {
        //Create first ViewElements
        elementsScrollView.addSubview(inhaceFlat)

        //Create second ViewElement
        elementsScrollView.addSubview(blackUnity)

        //Create second ViewElement3
        elementsScrollView.addSubview(caseBownImage)

        let scrollViewRect = CGRect(x: 20, y: 250, width: 350, height: 200)

        elementsScrollView.frame = scrollViewRect
        elementsScrollView.isPagingEnabled = true
        elementsScrollView.contentSize = CGSize(width: scrollViewRect.size.width * 3,
                                                height: scrollViewRect.size.height)
        view.addSubview(elementsScrollView)
    }

//MARK: - View Component Methods

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

//MARK: - Zapros TextFields

    private func zaprosTextFieldFunc() {
        // airPodsTextField number 1

        airPodsTextField.frame = CGRect(x: 25, y: 480, width: 200, height: 40)
        let poiskImage1 = UIImage(named: "magnifyingglass")
        addLeftImageTo1(txtField: airPodsTextField, andImage: poiskImage1!)
        airPodsTextField.text = "   AirPods"
        airPodsTextField.textColor = .systemGray6
        airPodsTextField.font = UIFont.boldSystemFont(ofSize: 20)
        airPodsTextField.backgroundColor = .black
        airPodsTextField.layer.cornerRadius = 10
        view.addSubview(airPodsTextField)

        // appleCareTextField number 2

        appleCareTextField.frame = CGRect(x: 25, y: 530, width: 200, height: 40)
        let poiskImage2 = UIImage(named: "magnifyingglass")
        addLeftImageTo2(txtField: appleCareTextField, andImage: poiskImage2!)
        appleCareTextField.text = "   AppleCare"
        appleCareTextField.textColor = .systemGray6
        appleCareTextField.font = UIFont.boldSystemFont(ofSize: 20)
        appleCareTextField.backgroundColor = .black
        appleCareTextField.layer.cornerRadius = 10
        view.addSubview(appleCareTextField)

        // beatsTextField number 3

        beatsTextField.frame = CGRect(x: 25, y: 580, width: 200, height: 40)
        let poiskImage3 = UIImage(named: "magnifyingglass")
        addLeftImageTo3(txtField: beatsTextField, andImage: poiskImage3!)
        beatsTextField.text = "   Beats"
        beatsTextField.textColor = .systemGray6
        beatsTextField.font = UIFont.boldSystemFont(ofSize: 20)
        beatsTextField.backgroundColor = .black
        beatsTextField.layer.cornerRadius = 10
        view.addSubview(beatsTextField)

        // iphoneTextField number 4

        iphoneTextField.frame = CGRect(x: 25, y: 630, width: 300, height: 40)
        let poiskImage4 = UIImage(named: "magnifyingglass")
        addLeftImageTo4(txtField: iphoneTextField, andImage: poiskImage4!)
        iphoneTextField.text = "   Сравните модели Iphone"
        iphoneTextField.textColor = .systemGray6
        iphoneTextField.font = UIFont.boldSystemFont(ofSize: 20)
        iphoneTextField.backgroundColor = .black
        iphoneTextField.layer.cornerRadius = 10
        view.addSubview(iphoneTextField)
    }

//MARK: - View Elements

    //caseBown View
    fileprivate func caseBownFunction() {
        caseBown.frame = CGRect(x: 360, y: 10, width: 150, height: 180)
        nameElementLabel3.frame = CGRect(x: 20, y: 130, width: 120, height: 30)
        caseBownImage.frame = CGRect(x: 10, y: 11, width: 120, height: 100)
        caseBownImage.image = UIImage(named: "caseBown")
        caseBownImage.contentMode = .scaleAspectFit
        nameElementLabel3.text = "Кожанный чехол для MacBook, 16 дьюмовый"
        nameElementLabel3.textColor = .white
        nameElementLabel3.font = UIFont.boldSystemFont(ofSize: 10)
        nameElementLabel3.numberOfLines = 0
        nameElementLabel3.adjustsFontSizeToFitWidth = true
        nameElementLabel3.sizeToFit()
        caseBown.addSubview(caseBownImage)
        caseBown.addSubview(nameElementLabel3)
        caseBown.backgroundColor = .systemGray
        caseBown.layer.cornerRadius = 10
        caseBown.tag = 2
        elementsScrollView.addSubview(caseBown)
    }

    //blackUnity View
    private func viewElementBelt() {

        blackUnity.frame = CGRect(x: 190, y: 10, width: 150, height: 180)
        nameElementLabel2.frame = CGRect(x: 20, y: 130, width: 120, height: 30)
        blackUnityImage.frame = CGRect(x: 10, y: 11, width: 120, height: 100)
        blackUnityImage.image = UIImage(named: "belt")
        blackUnityImage.contentMode = .scaleAspectFit
        nameElementLabel2.text = "Спортивный ремешок Black Unity"
        nameElementLabel2.textColor = .white
        nameElementLabel2.font = UIFont.boldSystemFont(ofSize: 10)
        nameElementLabel2.numberOfLines = 0
        nameElementLabel2.adjustsFontSizeToFitWidth = true
        nameElementLabel2.sizeToFit()
        blackUnity.addSubview(blackUnityImage)
        blackUnity.addSubview(nameElementLabel2)
        blackUnity.backgroundColor = .systemGray
        blackUnity.layer.cornerRadius = 10
        blackUnity.tag = 1
        elementsScrollView.addSubview(blackUnity)
    }

    //inhaceFlat View
    private func viewElementChehol() {

        inhaceFlat.frame = CGRect(x: 20, y: 10, width: 150, height: 180)
        nameElementLabel.frame = CGRect(x: 20, y: 130, width: 120, height: 30)
        inhaceFlatImage.frame = CGRect(x: 10, y: 10, width: 120, height: 120)
        inhaceFlatImage.image = UIImage(named: "case")
        inhaceFlatImage.contentMode = .scaleAspectFit
        nameElementLabel.text = "Чехол Inhace Flat для MacBook Pro 16 дюймов"
        nameElementLabel.textColor = .white
        nameElementLabel.font = UIFont.boldSystemFont(ofSize: 10)
        nameElementLabel.numberOfLines = 0
        nameElementLabel.adjustsFontSizeToFitWidth = true
        nameElementLabel.sizeToFit()
        inhaceFlat.addSubview(inhaceFlatImage)
        inhaceFlat.addSubview(nameElementLabel)
        inhaceFlat.backgroundColor = .systemGray
        inhaceFlat.layer.cornerRadius = 10
        inhaceFlat.tag = 0
        elementsScrollView.addSubview(inhaceFlat)
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
        inhaceFlat.addGestureRecognizer(tap)
        inhaceFlat.isUserInteractionEnabled = true

    }

    @objc func hundleTap(sender: UITapGestureRecognizer, paramButton: UIView) {

        let productVC = ProductViewController()
        navigationController?.pushViewController(productVC, animated: true)
        productVC.textLabel = nameElementLabel.text
        productVC.elementViewImage = inhaceFlatImage.image
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
        airPodsTextField.leftView = leftImageView
        airPodsTextField.leftViewMode = .always
    }

    @objc func addLeftImageTo2(txtField: UITextField, andImage img: UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        appleCareTextField.leftView = leftImageView
        appleCareTextField.leftViewMode = .always
    }

    @objc func addLeftImageTo3(txtField: UITextField, andImage img: UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        beatsTextField.leftView = leftImageView
        beatsTextField.leftViewMode = .always
    }

    @objc func addLeftImageTo4(txtField: UITextField, andImage img: UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        iphoneTextField.leftView = leftImageView
        iphoneTextField.leftViewMode = .always
    }

}

