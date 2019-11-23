//
//  ScreensViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Maxim on 23.11.2019.
//  Copyright © 2019 ekireev. All rights reserved.
//

import Foundation
import UIKit

class ScreensViewController: UIViewController {
    // MARK: - Properties
    
    private let app: ITunesApp
    private let imageDownloader = ImageDownloader()
    
    private var screensView: ScreensView {
        return self.view as! ScreensView
    }
    
    // MARK: - Init
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = ScreensView()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.isUserInteractionEnabled = true
        self.screensView.isUserInteractionEnabled = true
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(clickOnView))
        self.view.addGestureRecognizer(tapGR)
        
        self.fillData()
    }
    
    @objc func clickOnView() {
        print("sfsdf")
    }
    
    // MARK: - Private
    
    private func fillData() {
        guard let firstUrl = self.app.screenshotUrls.first else {return}
        self.imageDownloader.getImage(fromUrl: firstUrl) { (image, _) in
            self.screensView.firstScreen.image = image
        }
        if self.app.screenshotUrls.count > 2 {
            let secondUrl = self.app.screenshotUrls[1]
            self.imageDownloader.getImage(fromUrl: secondUrl) { (image, _) in
                self.screensView.secondScreen.image = image
            }
            
            let thirdUrl = self.app.screenshotUrls[2]
            self.imageDownloader.getImage(fromUrl: thirdUrl) { (image, _) in
                self.screensView.thirdScreen.image = image
            }
        }
    }
    
    
    
}
