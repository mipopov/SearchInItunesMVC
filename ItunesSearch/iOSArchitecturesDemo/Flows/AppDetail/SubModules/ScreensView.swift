//
//  ScreensView.swift
//  iOSArchitecturesDemo
//
//  Created by Maxim on 23.11.2019.
//  Copyright © 2019 ekireev. All rights reserved.
//

import Foundation
import UIKit

class ScreensView: UIView {
    private(set) lazy var firstScreen: UIImageView = {
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10.0
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private(set) lazy var secondScreen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10.0
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private(set) lazy var thirdScreen: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10.0
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupLayout()
    }
    
    // MARK: - UI
    
    private func setupLayout() {
        self.addSubview(self.firstScreen)
        self.addSubview(self.secondScreen)
        self.addSubview(self.thirdScreen)
        
        NSLayoutConstraint.activate([
            self.firstScreen.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10.0),
            self.firstScreen.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10.0),
            self.firstScreen.widthAnchor.constraint(equalToConstant: 120.0),
            self.firstScreen.heightAnchor.constraint(equalToConstant: 220.0),
            
            self.secondScreen.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10.0),
            self.secondScreen.leftAnchor.constraint(equalTo: self.firstScreen.rightAnchor, constant: 10),
            self.secondScreen.widthAnchor.constraint(equalToConstant: 120.0),
            self.secondScreen.heightAnchor.constraint(equalToConstant: 220.0),
            
            self.thirdScreen.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10.0),
            self.thirdScreen.leftAnchor.constraint(equalTo: self.secondScreen.rightAnchor, constant: 10),
            self.thirdScreen.widthAnchor.constraint(equalToConstant: 120.0),
            self.thirdScreen.heightAnchor.constraint(equalToConstant: 220.0),
        ])
    }
    
}
