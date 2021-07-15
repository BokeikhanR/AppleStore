//
//  SecondViewController.swift
//  16_UIImageView
//
//  Created by admin on 09.07.2021.
//

import UIKit

final class ForYouViewController: UIViewController {

//MARK: - View Properties
    
    private var myScrollView = UIScrollView()
    private var avatarButton = UIButton()
    private var addButton = UIButton()
    private var sozButton = UIButton()
    private var noviLabel = UILabel()
    private var novostiView = UIView()
    private var zakazLabel = UILabel()
    private var dostavkaLabel = UILabel()
    private var chevronRightButton = UIButton()
    private var zakazProgressView = UIProgressView()
    private var prosesLabel = UILabel()
    private var sendLabel = UILabel()
    private var dostkaLabel = UILabel()
    private var recomendasislabel = UILabel()
    private var ustroistvalabel = UILabel()
    private var pokazatVseLabel = UILabel()
    private var novostiLabel = UILabel()
    private var uvedLabel = UILabel()
    private var bellButton = UIButton()
    private var chevronButton = UIButton()
    private var uvedomlenieButton = UIButton()



//MARK: - View Components
    override func viewDidLoad() {
        super.viewDidLoad()

        createSamScrollView()
        createToBarButtonItem()
        createView()
        navigationControll()
        createZakazView()
        createNoviLabel()
        createRecomendationLabel()
        createNovostiLabel()
        createUvedomlenieLabel()
        createChevronAndBellButtons()
        createUstoistvaLabels()

    }


//MARK: - Label Elements

    private func createNoviLabel() {
        noviLabel.frame = CGRect(x: 20, y: 80, width: 250, height: 100)
        noviLabel.text = "Вот что нового"
        noviLabel.textColor = .black
        noviLabel.font = UIFont.boldSystemFont(ofSize: 25)
        noviLabel.textAlignment = .left
        view.addSubview(noviLabel)
    }

    private func createRecomendationLabel() {
        recomendasislabel.frame = CGRect(x: 20, y: 400,
                                         width: 250, height: 100)
        recomendasislabel.text = "Рекомендуется вам"
        recomendasislabel.textColor = .black
        recomendasislabel.font = UIFont.boldSystemFont(ofSize: 22)
        recomendasislabel.textAlignment = .left
        view.addSubview(recomendasislabel)
    }

    private func createNovostiLabel() {
        novostiLabel.frame = CGRect(x: 120, y: 490,
                                    width: 200, height: 100)
        novostiLabel.text = "Получайте новости о своем заказе в режиме реального времени"
        novostiLabel.textColor = .black
        novostiLabel.font = UIFont.boldSystemFont(ofSize: 12)
        novostiLabel.textAlignment = .left
        novostiLabel.numberOfLines = 0
        novostiLabel.adjustsFontSizeToFitWidth = true
        novostiLabel.sizeToFit()
        view.addSubview(novostiLabel)
    }

    private func createUvedomlenieLabel() {
        uvedLabel.frame = CGRect(x: 120, y: 550,
                                 width: 230, height: 100)
        uvedLabel.text = "Включите уведомления, чтобы получать новости о своем заказе."
        uvedLabel.textColor = .gray
        uvedLabel.font = UIFont.boldSystemFont(ofSize: 12)
        uvedLabel.textAlignment = .left
        uvedLabel.numberOfLines = 0
        uvedLabel.adjustsFontSizeToFitWidth = true
        uvedLabel.sizeToFit()
        view.addSubview(uvedLabel)
    }


//MARK: - View Elements

    private func createZakazView() {

        novostiView.frame = CGRect(x: 20, y: 180, width: 350, height: 150)
        novostiView.backgroundColor = .white
        novostiView.layer.shadowColor = UIColor.systemGray.cgColor
        novostiView.layer.shadowOpacity = 1
        novostiView.layer.shadowRadius = 5
        novostiView.layer.cornerRadius = 10

        let airPodsImage = UIImageView(image: UIImage(named: "AirPods"))
        airPodsImage.frame = CGRect(x: 20, y: 20, width: 80, height: 80)
        novostiView.addSubview(airPodsImage)

        zakazLabel.frame = CGRect(x: 100, y: 25, width: 200, height: 30)
        zakazLabel.text = "Ваш заказ отправлен"
        zakazLabel.textColor = .black
        novostiView.addSubview(zakazLabel)

        dostavkaLabel.frame = CGRect(x: 100, y: 50, width: 200, height: 30)
        dostavkaLabel.text = "1 Товар, доставка завтра"
        dostavkaLabel.textColor = .gray
        novostiView.addSubview(dostavkaLabel)

        let myView = UIView()
        myView.frame = CGRect(x: 0, y: 100, width: 350, height: 1)
        myView.backgroundColor = .systemGray4
        novostiView.addSubview(myView)
        chevronRightButton.frame = CGRect(x: 295, y: 48,
                                          width: 50 , height: 50)
        chevronRightButton.setImage(UIImage(named: "chevron.right-2"),
                                    for: .normal)
        novostiView.addSubview(chevronRightButton)

        zakazProgressView.progressViewStyle = .default
        zakazProgressView.frame = CGRect(x: 30, y: 120,
                                         width: 300, height: 40)
        zakazProgressView.setProgress(0.5, animated: true)
        zakazProgressView.progressTintColor = .systemGreen
        novostiView.addSubview(zakazProgressView)

        prosesLabel.frame = CGRect(x: 10, y: 130, width: 100, height: 20)
        prosesLabel.text = "Обрабатывается"
        prosesLabel.font = UIFont(name: "arial", size: 12)
        novostiView.addSubview(prosesLabel)

        sendLabel.frame = CGRect(x: 140, y: 130, width: 100, height: 20)
        sendLabel.text = "Отпраавлено"
        sendLabel.font = UIFont(name: "arial", size: 12)
        novostiView.addSubview(sendLabel)

        dostkaLabel.frame = CGRect(x: 260, y: 130, width: 100, height: 20)
        dostkaLabel.text = "Доставлено"
        dostkaLabel.textColor = .gray
        dostkaLabel.font = UIFont(name: "arial", size: 12)
        novostiView.addSubview(dostkaLabel)
        view.addSubview(novostiView)
    }

    //MARK: - createChevronAndBellButtons


    private func createChevronAndBellButtons() {

    let bellImage = UIImage(named: "bell.square")
    bellButton.frame = CGRect(x: 20, y: 460, width: 100, height: 100)
    bellButton.imageView?.sizeToFit()
    bellButton.setImage(bellImage, for: .normal)
    view.addSubview(bellButton)

    let chevronImage = UIImage(systemName: "chevron.right")
    chevronButton.frame = CGRect(x: 300, y: 490, width: 80, height: 80)
    chevronButton.setImage(chevronImage, for: .normal)
    chevronButton.backgroundColor = .white
    chevronButton.imageView?.sizeToFit()
    view.addSubview(chevronButton)
}


//MARK: - create UstroistvaLabels
    private func createUstoistvaLabels() {

        ustroistvalabel.frame = CGRect(x: 20, y: 600,
                                       width: 250, height: 100)
        ustroistvalabel.text = "ваши устройства"
        ustroistvalabel.textColor = .black
        ustroistvalabel.font = UIFont.boldSystemFont(ofSize: 26)
        ustroistvalabel.textAlignment = .left
        view.addSubview(ustroistvalabel)

        pokazatVseLabel.frame = CGRect(x: 270, y: 605,
                                       width: 250, height: 100)
        pokazatVseLabel.text = "Показать все"
        pokazatVseLabel.textColor = .systemBlue
        pokazatVseLabel.font = UIFont.boldSystemFont(ofSize: 15)
        pokazatVseLabel.textAlignment = .left
        view.addSubview(pokazatVseLabel)
    }

//MARK: - Navigation Controll
    
    private func navigationControll(){
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
    }

//MARK: - Create Scroll View

    fileprivate func createSamScrollView() {
        myScrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        view = myScrollView
    }


//MARK: - Create Bar Button Item
  private func createToBarButtonItem() {
    let suret = UIImage(named: "download")?.resizeImage(to: CGSize(width: 30, height: 30))
    addButton.setImage(suret, for: .normal)
    addButton.backgroundColor = .systemBlue
    addButton.layer.cornerRadius = 15
    addButton.clipsToBounds = true
    addButton.addTarget(self, action: #selector(addNewPerson), for: .touchUpInside)

    let barButton = UIBarButtonItem()
    barButton.customView = addButton

    navigationItem.rightBarButtonItem = barButton
  }

    @objc func addNewPerson(){
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }

     func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        if let image = info[.originalImage] as? UIImage {
            let img = image.resizeImage(to: CGSize(width: 30, height: 30))
            let imageData = image.pngData()
            UserDefaults.standard.setValue(imageData, forKey: "avatar")
            addButton.setImage(img, for: .normal)

            dismiss(animated: true)
        }
    }

//MARK: - Create User Defaults

    private func createAddButton(){
        guard let data = UserDefaults.standard.value(forKey: "avatar") as? Data else {return}
        addButton.setImage(UIImage(data: data)? .resizeImage(to: CGSize(width: 30, height: 30)), for: .normal )
    }

//MARK: - View Methods

    private func createView() {
        title = "Для вас"
        view.backgroundColor = .white
    }
}

//MARK: Extension UIImage

extension UIImage {
    func resizeImage(to size: CGSize) -> UIImage{
        return UIGraphicsImageRenderer(size: size).image{_ in
            draw(in: CGRect(origin: .zero, size: size))
        }
    }
}

extension ForYouViewController: UIImagePickerControllerDelegate{}

extension ForYouViewController: UINavigationControllerDelegate{}
