//
//  AppDetailWhatView.swift
//  iOSArchitecturesDemo
//
//  Created by Maxim on 21.11.2019.
//  Copyright © 2019 ekireev. All rights reserved.
//

import Foundation
import UIKit

class AppDetailWhatView: UIView {
    //    MARK: Subviews
    
    private(set) lazy var whatNewLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        return label
    }()
    
    private(set) lazy var historyVersionsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 14.0)
        return label
    }()
    
    private(set) lazy var historyButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("История версий", for: .normal)
        button.backgroundColor = UIColor(white: 0.9, alpha: 1.0)
        button.layer.cornerRadius = 16.0
        return button
    }()
    
    private(set) lazy var textWhatNew: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.numberOfLines = 3
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        return label
    }()
    
    private(set) lazy var versionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        return label
    }()
    
    private(set) lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupLayout()
    }
    
    private func setupLayout() {
        self.addSubview(self.whatNewLabel)
        self.addSubview(self.historyButton)
        self.addSubview(self.textWhatNew)
        self.addSubview(self.versionLabel)
        self.addSubview(self.dateLabel)
        
        NSLayoutConstraint.activate([
            self.whatNewLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            self.whatNewLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            self.whatNewLabel.widthAnchor.constraint(equalToConstant: 200),
            self.whatNewLabel.heightAnchor.constraint(equalToConstant: 25),
            
            self.historyButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            self.historyButton.leftAnchor.constraint(equalTo: self.whatNewLabel.rightAnchor, constant: 30),
            self.historyButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            
            self.versionLabel.topAnchor.constraint(equalTo: self.whatNewLabel.bottomAnchor, constant: 10),
            self.versionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            self.versionLabel.rightAnchor.constraint(equalTo: self.whatNewLabel.rightAnchor),
            
            self.dateLabel.topAnchor.constraint(equalTo: self.whatNewLabel.bottomAnchor, constant: 10),
            self.dateLabel.leftAnchor.constraint(equalTo: self.whatNewLabel.rightAnchor, constant: 10),
            self.dateLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            
            self.textWhatNew.topAnchor.constraint(equalTo: self.versionLabel.bottomAnchor, constant: 10),
            self.textWhatNew.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            self.textWhatNew.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16)
            
        ])
    }
}
