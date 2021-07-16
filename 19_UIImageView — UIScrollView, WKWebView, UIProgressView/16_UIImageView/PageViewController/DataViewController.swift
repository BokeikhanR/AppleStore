//
//  DataViewController.swift
//  16_UIImageView
//
//  Created by admin on 16.07.2021.
//

import UIKit

final class DataViewController: UIViewController {

//MARK: - Images

    private let yourImageView: UIImageView = {
        let view = UIImageView()
        view.frame = CGRect(x: 0, y: 100, width: 390, height:500)
        view.contentMode = .scaleAspectFit
        return view
    }()

//MARK: - Element Label

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.frame = CGRect(x: 50, y: 600, width: 300, height: 40)
        label.textAlignment = .center
        return label
    }()

    private var secondLabel: UILabel = {
        let labelSecond = UILabel()
        labelSecond.textColor = .red
        labelSecond.font = UIFont.boldSystemFont(ofSize: 20)
        labelSecond.frame = CGRect(x: 50, y: 700, width: 300, height: 40)
        labelSecond.textAlignment = .center
        return labelSecond
    }()
    
    lazy var subView: [UIView] = [yourImageView, nameLabel]
    
//MARK: - Initializes

    init(dataWith: DataHelper) {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
        edgesForExtendedLayout = []

        yourImageView.image = UIImage(named: dataWith.image)
        nameLabel.text = dataWith.label
        secondLabel.text = dataWith.labelSecond1

        for view in subView{ view.addSubview(view) }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
