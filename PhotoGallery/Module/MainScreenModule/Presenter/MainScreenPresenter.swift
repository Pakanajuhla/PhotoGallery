//
//  MainScreenPresenter.swift
//  PhotoGallery
//
//  Created by Vladyslav on 25.02.2024.
//

import UIKit

protocol MainScreenPresenterProtocol: AnyObject {
    init(view: MainScreenViewProtocol)
    
}

class MainScreenPresenter {
    weak var view: MainScreenViewProtocol?
    
    required init(view: MainScreenViewProtocol) {
        self.view = view
    }
}

extension MainScreenPresenter: MainScreenPresenterProtocol {
    
}
