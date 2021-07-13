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
     private var productNameLabel = UILabel()
     private var senaLabel = UILabel()
     private var productImage = UIImageView()

     //ScrollView
     private var detailScrollView = UIScrollView()

     //Buttons
     private var korzinaButton = UIButton()
     private var whiteColorButton = UIButton()
     private var grayColorButton = UIButton()

     //Nadpisi
     private var stoimostTextField = UITextField()
     private var stoimostLabel = UILabel()

     //Dostavka
     private var dostavkaLabel = UILabel()
     private var addressLabel = UILabel()
     private var dostavkaTextField = UITextField()

//MARK: - Visual Components
    override func viewDidLoad() {
        super.viewDidLoad()

        dostavkaElements()
        nadpisElements()
        colorAndKorzinaButtons()
        createScrollViewElements()
        funcProductLabel()
        elementLabel()
        createProductNameLabel()

        //Navigation Items
        let shareButton = UIBarButtonItem(image: UIImage(named: "square.and.arrow.up"), style: .done, target: self, action: #selector(tappedShareButton))
        let heartButton = UIBarButtonItem(image: UIImage(named: "heart"), style: .plain, target: self, action: #selector(tappedHeartButton))
        navigationItem.rightBarButtonItems = [heartButton, shareButton]


        navigationController?.navigationBar.barTintColor = .black
        tabBarController?.tabBar.barTintColor = .black

    }


//MARK: - @OBJC Methods

//A Button Tapped functions
        @objc func tappedShareButton(){
            print("Share to tapped")
        }
        @objc func tappedHeartButton(){
            print("Share to tapped")
        }

//Add left Image to Dostavka

        @objc func addLeftImageToDostavka(txtField: UITextField, andImage img: UIImage){
            let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height))
            leftImageView.image = img
            dostavkaTextField.leftView = leftImageView
            dostavkaTextField.leftViewMode = .always
        }

//Add Left Image to Nadpis
        @objc func addLeftImageTo(txtField: UITextField, andImage img: UIImage){
            let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height))
            leftImageView.image = img
            stoimostTextField.leftView = leftImageView
            stoimostTextField.leftViewMode = .always
        }

//MARK: - Methods

    //create ImageView
    private func newImageViewWithImage(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
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

    //Label Number 2
    private func createProductNameLabel(){

        productNameLabel.frame = CGRect(x: 78, y: 440, width: 200, height: 60)
        productNameLabel.text = textLabel
        productNameLabel.adjustsFontSizeToFitWidth = true
        productNameLabel.sizeToFit()
        productNameLabel.textColor = .white
        productNameLabel.font = UIFont.boldSystemFont(ofSize: 10)
        view.addSubview(productNameLabel)
    }
    //LABEL Number 3

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
    
//MARK: - View Components Function

    fileprivate func dostavkaElements() {
        //Dostavka Text FIield

        dostavkaTextField.frame = CGRect(x: 30, y: 705, width: 200, height: 30)
        let dostavkaImage = UIImage(named: "shippingbox")
        addLeftImageToDostavka(txtField: dostavkaTextField, andImage: dostavkaImage!)
        dostavkaTextField.text = "     Чт 13 Июль - Бесплатно"
        dostavkaTextField.font = UIFont.boldSystemFont(ofSize: 10)
        dostavkaTextField.textColor = .gray
        view.addSubview(dostavkaTextField)

        //Dostavka elements
        dostavkaLabel.frame = CGRect(x: 60, y: 690, width: 300, height: 30)
        dostavkaLabel.text = "Заказ сегодня в течение дня, доставка: "
        dostavkaLabel.font = UIFont.boldSystemFont(ofSize: 10)
        dostavkaLabel.textColor = .white
        view.addSubview(dostavkaLabel)

        //Dostavka label
        addressLabel.frame = CGRect(x: 60, y: 720, width: 300, height: 30)
        addressLabel.text = "Варианты доставки для местоположения: 115533"
        addressLabel.font = UIFont.boldSystemFont(ofSize: 10)
        addressLabel.textColor = .systemBlue
        view.addSubview(addressLabel)
    }

    fileprivate func nadpisElements() {
        //Nadpis s knopkoi

        stoimostTextField.frame = CGRect(x: 50, y: 550, width: 200, height: 30)
        let okImage = UIImage(named: "checkmark.circle.fill")
        addLeftImageTo(txtField: stoimostTextField, andImage: okImage!)
        stoimostTextField.text = "  Совместимо с"
        stoimostTextField.font = UIFont.boldSystemFont(ofSize: 10)
        stoimostTextField.textColor = .gray
        view.addSubview(stoimostTextField)

        //Nadpis Label
        stoimostLabel.frame = CGRect(x: 155, y: 550, width: 200, height: 30)
        stoimostLabel.text = "Mac Book Pro - Евгений "
        stoimostLabel.font = UIFont.boldSystemFont(ofSize: 10)
        stoimostLabel.textColor = .systemBlue
        view.addSubview(stoimostLabel)
    }

    fileprivate func colorAndKorzinaButtons() {
        //Buttons

        whiteColorButton.frame = CGRect(x: 160, y: 500, width: 36, height: 36)
        whiteColorButton.backgroundColor = .systemGray5
        whiteColorButton.layer.cornerRadius = 18
        view.addSubview(whiteColorButton)

        grayColorButton.frame = CGRect(x: 205, y: 500, width: 36, height: 36)
        grayColorButton.backgroundColor = .systemGray
        grayColorButton.layer.cornerRadius = 18
        view.addSubview(grayColorButton)

        //KorzinaButton
        korzinaButton.frame = CGRect(x: 20, y: 600, width: 350, height: 50)
        korzinaButton.setTitle("Дабавить в корзину", for: .normal)
        korzinaButton.setTitleColor(.white, for: .normal)
        korzinaButton.backgroundColor = .systemBlue
        korzinaButton.layer.cornerRadius = 10
        view.addSubview(korzinaButton)
    }

//MARK: - Create Scroll View

    fileprivate func createScrollViewElements() {
        //Cases
        let papkaNumberOne = UIImage(named: "case")
        let papkaNumberTwo = UIImage(named: "case2")
        let papkaNumberThree = UIImage(named: "case3")

        //Create ScrolllView
        let scrollViewRect = CGRect(x: 50, y: 200, width: 300, height: 230)
        detailScrollView.frame = scrollViewRect
        detailScrollView.isPagingEnabled = true
        detailScrollView.contentSize = CGSize(width: scrollViewRect.size.width * 3, height: scrollViewRect.size.height)
        view.addSubview(detailScrollView)

        //First ImageView
        var imageViewRect = CGRect(x: 10, y: 10, width: 295, height: 225)
        let caseImageViewOne = self.newImageViewWithImage(paramImage: papkaNumberOne!, paramFrame: imageViewRect)
        detailScrollView.addSubview(caseImageViewOne)

        //Second ImageView

        imageViewRect.origin.x += imageViewRect.size.width
        let caseImageViewTwo = self.newImageViewWithImage(paramImage: papkaNumberTwo!, paramFrame: imageViewRect)
        detailScrollView.addSubview(caseImageViewTwo)

        //Three ImgeView
        imageViewRect.origin.x += imageViewRect.size.width
        let caseImageViewThree = self.newImageViewWithImage(paramImage: papkaNumberThree!, paramFrame: imageViewRect)
        detailScrollView.addSubview(caseImageViewThree)
    }


}