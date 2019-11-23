//
//  AppDetailWhatNewController.swift
//  iOSArchitecturesDemo
//
//  Created by Maxim on 21.11.2019.
//  Copyright © 2019 ekireev. All rights reserved.
//

import Foundation
import UIKit

class AppDetailWhatNewController: UIViewController {
    // MARK: - Properties
    
    private let app: ITunesApp
    
    private var appDetailWhateNew: AppDetailWhatView {
        return self.view as! AppDetailWhatView
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
        self.view = AppDetailWhatView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
    }
    
    // MARK: - Private
    
    private func fillData() {
        self.appDetailWhateNew.whatNewLabel.text = "Что нового?"
        self.appDetailWhateNew.historyVersionsLabel.text = "История версий"
        self.appDetailWhateNew.dateLabel.text = self.app.releaseDate
        self.appDetailWhateNew.versionLabel.text = "Версия \(String(self.app.versionUpdate ?? " "))"
        self.appDetailWhateNew.textWhatNew.text = self.app.releaseNotes
    }
    
}
