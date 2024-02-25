//
//  TabBarViewPresenter.swift
//  PhotoGallery
//
//  Created by Vladyslav on 25.02.2024.
//

import UIKit

protocol TabBarViewPresenterProtocol: AnyObject {
    init(view: TabBarViewProtocol)
    func buildTabBar()
}

class TabBarViewPresenter {
    
    weak var view: TabBarViewProtocol?
    
    required init(view: TabBarViewProtocol) {
        self.view = view
        self.buildTabBar()
    }
}

extension TabBarViewPresenter: TabBarViewPresenterProtocol {
    func buildTabBar() {
        self.view?.setControllers(controllers: [])
    }
}
