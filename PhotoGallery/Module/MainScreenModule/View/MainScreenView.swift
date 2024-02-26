//
//  MainScreenView.swift
//  PhotoGallery
//
//  Created by Vladyslav on 25.02.2024.
//

import UIKit

protocol MainScreenViewProtocol: AnyObject {
    func showPosts()
}

class MainScreenView: UIViewController {
    
    var presenter: MainScreenPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .appMain
    }
}

extension MainScreenView: MainScreenViewProtocol {
    func showPosts() {
        
    }
}
