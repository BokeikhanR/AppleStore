//
//  MyViewController1.swift
//  16_UIImageView
//
//  Created by admin on 16.07.2021.
//

import UIKit

final class MyViewController1: UIPageViewController {

    //MARK: - Private Properties

    private var currentIndex = 0
    private var imageArray = [
                      DataHelper(image: "111", label: "Track Your Cycle",labelSecond1: "qwertyuiop"),
                      DataHelper(image: "222", label: "Plan Your Pregnancy", labelSecond1: "poiuytre"),
                      DataHelper(image: "333", label: "Daily Health Insigt", labelSecond1: "ZXCVBNM<")]
    
    private var skipButton = UIButton()
    private var nextButton = UIButton()
    private var getButton = UIButton()



    override func viewDidLoad() {
        super.viewDidLoad()

        settingsMethod()
    }

    //MARK: - Create Buttons

    private func settingsMethod() {
        createSkipButton()
        createGetButton()
        createButton()
        createColor()
    }

    @objc private func createTappedFunction(){

                let buyVC = BuyViewController()
                let forYouVC = ForYouViewController()
                let searchVC = SearchViewController()
                let bascetVC = BascetViewController()

                let navigationController = UINavigationController(rootViewController: searchVC)

                let forYouNavigationController = UINavigationController(rootViewController: forYouVC)

                buyVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "laptopcomputer.and.iphone"), tag: 0)
                forYouVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "person.crop.circle"), tag: 1)
                searchVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "magnifyingglass"), tag: 2)
                bascetVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "bag"), tag: 3)

                let tabBarVC = UITabBarController()
                tabBarVC.setViewControllers([buyVC, forYouNavigationController, navigationController, bascetVC], animated: true)
                tabBarVC.tabBar.barTintColor = .black

            dismiss(animated: true)
                tabBarVC.modalPresentationStyle = .fullScreen
                present(tabBarVC, animated: true)

    }

    private func createColor(){

        let appearance = UIPageControl.appearance(whenContainedInInstancesOf: [UIPageViewController.self])
        appearance.pageIndicatorTintColor = .gray
        appearance.currentPageIndicatorTintColor = .orange
    }

    private func createGetButton(){
        getButton.frame = CGRect(x: 130, y: 750, width: 150, height: 40)
        getButton.setTitle("GET STARTED", for: .normal)
        getButton.setTitleColor(.black, for: .normal)
        getButton.backgroundColor = .white
        getButton.isHidden = true
        getButton.addTarget(self, action: #selector(createTappedFunction), for: .touchUpInside)
        view.addSubview(getButton)
    }

    private func createSkipButton() {
        skipButton.frame = CGRect(x: 50, y: 770, width: 70, height: 40)
        skipButton.setTitle("SKIP", for: .normal)
        skipButton.backgroundColor = .white
        skipButton.setTitleColor(.gray, for: .normal)
        skipButton.addTarget(self, action: #selector(createTappedFunction), for: .touchUpInside)
        view.addSubview(skipButton)
    }

    private func createButton() {
        nextButton.frame = CGRect(x: 300, y: 770, width: 70, height: 40)
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.systemBlue, for: .normal)
        nextButton.addTarget(self, action: #selector(nextTapped(sender:)), for: .touchUpInside)
        view.addSubview(nextButton)
    }

//MARK: - Next Button Tapped
    @objc func nextTapped(sender: UIButton){
        if currentIndex < imageArray.count - 1 {
            currentIndex += 1
            setViewControllers([photoArray[currentIndex]], direction: .forward, animated: true)
            isItLastView(index: currentIndex)
        }
    }
//MARK: - Dismiss Page View Controller

    @objc private func dissmisPageViewController() { 
        UserDefaults.standard.setValue("Yes", forKey: "Add")
        dismiss(animated: true)
    }

    //MARK: - Create Collection View Controllers

    lazy var photoArray : [DataViewController] = {
        var photoVC = [DataViewController]()
        for image in imageArray {
            photoVC.append(DataViewController(dataWith: image))
        }
        return photoVC
    }()

//MARK: - Initializers

    override init(transitionStyle style: UIPageViewController.TransitionStyle,
                  navigationOrientation: UIPageViewController.NavigationOrientation,
                  options: [UIPageViewController.OptionsKey : Any]? = nil) {

        super.init(transitionStyle: .scroll, navigationOrientation: navigationOrientation, options: nil)
        view.backgroundColor = .white
        dataSource = self
        delegate = self

        setViewControllers([photoArray[0]], direction: .forward, animated: true, completion: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func isItLastView(index: Int){
        if index == imageArray.count - 1 {
            nextButton.isHidden = true
            skipButton.isHidden = true
            getButton.isHidden = false
            togglePageControl(hide: true)
        } else {
            nextButton.isHidden = false
            skipButton.isHidden = false
            getButton.isHidden = true
            togglePageControl(hide: false)
        }
    }
}

//MARK: - Extensions

extension MyViewController1: UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? DataViewController else { return nil }
        if let index = photoArray.firstIndex(of: viewController){
            isItLastView(index: index)
            if index < imageArray.count - 1 {
            currentIndex += 1
                return photoArray[index + 1]
           }
        }
        return nil
    }

    func togglePageControl(hide: Bool){
        for subView in self.view.subviews {
            if subView is UIPageControl {
                subView.isHidden = hide
            }
        }
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? DataViewController else { return nil }
        if let index = photoArray.firstIndex(of: viewController){
            if index < imageArray.count - 1 {
                return photoArray[index + 1]
            }
        }
        return nil
    }
}

extension MyViewController1: UIPageViewControllerDataSource {

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return imageArray.count
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return currentIndex
    }
}
