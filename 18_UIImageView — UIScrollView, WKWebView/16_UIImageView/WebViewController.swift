//
//  WebViewController.swift
//  16_UIImageView
//
//  Created by admin on 13.07.2021.
//

import UIKit
import WebKit

final class WebViewController: UIViewController {

//MARK: - View Properties

    private var webView = WKWebView()
    private var progressView = UIProgressView()
    private var theToolbar = UIToolbar()


    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()

        //MARK: - WebView
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }


//MARK: - View Components

    override func viewDidLoad() {
        super.viewDidLoad()

        createTheToolbar()
        crateURLAddress()
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progressView.progress = Float(webView.estimatedProgress)
        }
    }

//MARK: - @OBJC Methods


    //-Share Button Method

    @objc func shareButton(){
        let url = URL(string: "https://www.apple.com")

        let shareSheet = UIActivityViewController(activityItems: [url as Any], applicationActivities: nil)

        shareSheet.popoverPresentationController?.sourceView = self.view
        self.present(shareSheet, animated: true, completion: nil)
    }

    //Buttons Method

    @objc func back(){
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @objc func forward(){
        if webView.canGoForward{
            webView.goForward()
        }
    }
    @objc func reload(){
        webView.reload()
    }
    @objc func toShare(){
        print("back")
    }
    @objc func theFlexeble(){
        print("Flexeble")
    }
    @objc func theFixed(){
        print("theFixed")
    }

//MARK: View Components Function

    private func createTheToolbar() {
        theToolbar.frame = CGRect(x:0, y: 720, width: 386, height: 50)
        theToolbar.backgroundColor = .gray

        let backButton = UIBarButtonItem(image: UIImage(systemName: "arrow.backward"), style: .plain, target: self, action: #selector(back))

        let forwardButton = UIBarButtonItem(image: UIImage(systemName: "arrow.right"), style: .plain, target: self, action: #selector(forward))

        let reloadButton = UIBarButtonItem(image: UIImage(systemName: "arrow.clockwise"), style: .plain, target: self, action: #selector(reload))

        let sharebutton = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .plain, target: self, action: #selector(shareButton))

        let flexebleButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: #selector(theFlexeble))

        progressView = UIProgressView(progressViewStyle: .default)
        progressView.sizeToFit()
        let progressButton = UIBarButtonItem(customView: progressView)

        theToolbar.setItems([backButton,forwardButton,flexebleButton,progressButton,flexebleButton,reloadButton, sharebutton], animated: true)
        theToolbar.isUserInteractionEnabled = true

        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)

        view.addSubview(theToolbar)
        view.backgroundColor = .white
    }

//MARK: -Create URL Address

    private func crateURLAddress() {
        if let myURL = URL(string: "https://www.apple.com/shop/product/MWVC2ZM/A/leather-sleeve-for-16%E2%80%91inch-macbook-pro-midnight-blue?fnode=09b66a09ae9020901041b9b4913b4d0b6cc2968f8c521275f9deb409e71eb5c517ca839482ada85b5eeb6fca798f2abdd54ffe32c2b2309c5f9545c7c6e55af0013bcd8666dfadb4bc527a08990c45b91aa8fa6c6784737b5b7486e83357935de13bf1fdb7d4cee54cff76e23698ac0a"){
            let myRequest = URLRequest(url: myURL)
            webView.load(myRequest)
        }
    }
}

extension WebViewController: WKUIDelegate {
    
}
