//
//  AppDetailViewController.swift
//  iOSArchitecturesDemo
//
//  Created by ekireev on 20.02.2018.
//  Copyright © 2018 ekireev. All rights reserved.
//

import UIKit

final class AppDetailViewController: UIViewController {
    let app: ITunesApp
    
    lazy var headerViewController = HeadearViewController(app: self.app)
    lazy var whatNewViewController = AppDetailWhatNewController(app: self.app)
    lazy var screensCollectionViewController = ScreensViewController(app: self.app)
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureUI()
    }
    
    private func configureUI() {
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.tintColor = UIColor.white;
        self.navigationItem.largeTitleDisplayMode = .never
        self.addHeaderViewController()
        self.addWhatNewViewController()
        self.addScreenCollectionViewController()
    }
    
    private func addScreenCollectionViewController() {
        self.addChild(self.screensCollectionViewController)
        self.view.addSubview(self.screensCollectionViewController.view)
        self.screensCollectionViewController.didMove(toParent: self)
        
        self.screensCollectionViewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.screensCollectionViewController.view.topAnchor.constraint(equalTo: self.whatNewViewController.view.bottomAnchor,constant: 10),
            self.screensCollectionViewController.view.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.screensCollectionViewController.view.rightAnchor.constraint(equalTo: self.view.rightAnchor)
            
        ])
    }
    
    private func addWhatNewViewController() {
        self.addChild(self.whatNewViewController)
        self.view.addSubview(self.whatNewViewController.view)
        self.whatNewViewController.didMove(toParent: self)
        
        self.whatNewViewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.whatNewViewController.view.topAnchor.constraint(equalTo: self.headerViewController.view.bottomAnchor),
            self.whatNewViewController.view.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.whatNewViewController.view.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.whatNewViewController.view.heightAnchor.constraint(equalToConstant: 110)
        ])
    }
    private func addHeaderViewController() {
        self.addChild(self.headerViewController)
        self.view.addSubview(self.headerViewController.view)
        self.headerViewController.didMove(toParent: self)
        
        self.headerViewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.headerViewController.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.headerViewController.view.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.headerViewController.view.rightAnchor.constraint(equalTo: self.view.rightAnchor)
        ])
    }
}
